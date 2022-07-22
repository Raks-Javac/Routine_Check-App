import 'package:hive/hive.dart';

@HiveType(typeId: 0)
class RoutineDb extends HiveObject {
  @HiveField(0)
  String title;
  @HiveField(1)
  String description;
  @HiveField(2)
  bool missed;
  @HiveField(3)
  bool done;

  RoutineDb({
    required this.title,
    required this.description,
    required this.missed,
    required this.done,
  });
}
