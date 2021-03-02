// @injectable
// class GetComicsUsecase {
//   Future<Comics> execute(int id) async {
//     final response = await getIt<ApiProvider>().client.get("${Config.BASE_URL}/$id/info.0.json");

//     if (response.statusCode == 200) {
//       return ComicsDTO.fromJson(json.decode(response.body)).toDomain();
//     } else {
//       throw Exception(response.body);
//     }
//   }
// }
