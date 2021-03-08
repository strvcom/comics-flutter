// import 'dart:convert';

// import 'package:strv_app_workshop/core/network/api_provider.dart';
// import 'package:strv_app_workshop/core/resources/config.dart';
// import 'package:strv_app_workshop/features/random/data/entities/comics_dto.dart';
import 'package:strv_app_workshop/features/random/data/models/comics.dart';

class GetComicsUsecase {
  Future<Comics> execute(int id) async {
    return Comics();

    // final response = await ApiProvider().client.get("${Config.BASE_URL}/$id/info.0.json");

    // if (response.statusCode == 200) {
    //   return ComicsDTO.fromJson(json.decode(response.body)).toDomain();
    // } else {
    //   throw Exception(response.body);
    // }
  }
}
