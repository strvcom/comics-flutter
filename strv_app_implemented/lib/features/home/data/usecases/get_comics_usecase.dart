import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:strv_app_implemented/core/config/config.dart';
import 'package:strv_app_implemented/core/di/injection.dart';
import 'package:strv_app_implemented/core/network/api_provider.dart';
import 'package:strv_app_implemented/features/home/data/entities/comics_dto.dart';
import 'package:strv_app_implemented/features/home/data/models/comics.dart';

@injectable
class GetComicsUsecase {
  Future<Comics> execute(int id) async {
    final response = await getIt<ApiProvider>().client.get("${Config.BASE_URL}/$id/info.0.json");

    if (response.statusCode == 200) {
      return ComicsDTO.fromJson(json.decode(response.body)).toDomain();
    } else {
      throw Exception(response.body);
    }
  }
}
