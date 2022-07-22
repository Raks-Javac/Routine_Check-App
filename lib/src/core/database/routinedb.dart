import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
part 'routinedb.g.dart';

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
  @HiveField(4)
  TimeOfDay routineTime;
  @HiveField(5)
  DateTime routimeDate;

  RoutineDb({
    required this.title,
    required this.description,
    required this.missed,
    required this.done,
    required this.routimeDate,
    required this.routineTime,
  });
}
