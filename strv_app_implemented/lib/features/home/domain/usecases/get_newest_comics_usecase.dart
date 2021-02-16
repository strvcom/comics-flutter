import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:strv_app_implemented/core/config/config.dart';
import 'package:strv_app_implemented/core/di/injection.dart';
import 'package:strv_app_implemented/core/network/api_provider.dart';
import 'package:strv_app_implemented/features/home/data/models/comics.dart';
import 'package:strv_app_implemented/features/home/domain/entities/comics_dto.dart';

@injectable
class GetNewestComicsUsecase {
  Future<Comics> execute() async {
    final response = await getIt<ApiProvider>().client.get("${Config.BASE_URL}/info.0.json");

    if (response.statusCode == 200) {
      return ComicsDTO.fromJson(json.decode(response.body)).toDomain();
    } else {
      throw Exception(response.body);
    }
  }
}
