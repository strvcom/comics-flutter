// @injectable
// class GetNewestComicsUsecase {
//   Future<Comics> execute() async {
//     final response = await getIt<ApiProvider>().client.get("${Config.BASE_URL}/info.0.json");

//     if (response.statusCode == 200) {
//       return ComicsDTO.fromJson(json.decode(response.body)).toDomain();
//     } else {
//       throw Exception(response.body);
//     }
//   }
// }
