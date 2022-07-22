import 'package:estate_project/src/features/routines/done/presentation/views/done_screen.dart';
import 'package:estate_project/src/features/routines/missed/presentation/views/missed_screen.dart';
import 'package:estate_project/src/features/routines/overview/presentation/views/overview_screen.dart';
import 'package:flutter/widgets.dart';

class RoutineCategory {
  String? categoryLabel;
  Widget? categoryScreens;
  RoutineCategory({this.categoryLabel, this.categoryScreens});
}

List<RoutineCategory> routineCategory = [
  RoutineCategory(
      categoryLabel: "Overview", categoryScreens: const OverViewScreen()),
  RoutineCategory(
    categoryLabel: "Done",
    categoryScreens: DoneSceen(),
  ),
  RoutineCategory(
    categoryLabel: "Missed",
    categoryScreens: MissedScreen(),
  ),
];
