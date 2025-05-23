import 'package:hive/hive.dart';

part 'notemodel.g.dart';

@HiveType(typeId: 0)
class Notemodel extends HiveObject {
  @HiveField(0)
   String title;
  @HiveField(1)
   String content;
  @HiveField(2)
  final String date;
  @HiveField(3)
  final int color;

  Notemodel({
    required this.title,
    required this.content,
    required this.color,
    required this.date,
  });
}
