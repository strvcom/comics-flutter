import 'package:hive/hive.dart';

part 'comics.g.dart';

@HiveType(typeId: 0)
class Comics extends HiveObject {
  @HiveField(0)
  int id;

  @HiveField(1)
  String title;

  @HiveField(2)
  String description;

  @HiveField(3)
  String url;

  Comics({this.id, this.title, this.description, this.url});
}
