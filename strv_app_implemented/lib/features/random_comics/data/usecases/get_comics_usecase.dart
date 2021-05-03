import 'dart:convert';

import 'package:strv_app_implemented/core/network/api_provider.dart';
import 'package:strv_app_implemented/core/resources/config.dart';
import 'package:strv_app_implemented/features/random_comics/data/entities/comics_dto.dart';
import 'package:strv_app_implemented/features/random_comics/data/models/comics.dart';

class GetComicsUsecase {
  Future<Comics> execute(int id) async {
    final response = await ApiProvider().client.get(Uri.https(Config.BASE_URL, "/$id/info.0.json"));

    if (response.statusCode == 200) {
      return ComicsDTO.fromJson(json.decode(response.body)).toDomain();
    } else {
      throw Exception(response.body);
    }
  }
}
