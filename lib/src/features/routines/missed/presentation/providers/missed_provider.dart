import 'dart:developer';

import 'package:estate_project/src/core/database/db_service.dart';
import 'package:estate_project/src/core/database/routinedb.dart';
import 'package:flutter/material.dart';

class MissedViewModel extends HiveService {
  BuildContext? context;
  MissedViewModel({this.context});

  Iterable<RoutineDb> missedRoutineList = [];

  Future<Iterable<RoutineDb>> getMissedRoutines() async {
    var getInitialRoutineList = await getRoutineItems();
    Iterable<RoutineDb> missedRoutineChecked =
        getInitialRoutineList.where((element) => element.missed == true);
    log("missed  routines length --->>>${missedRoutineChecked.length}");

    return missedRoutineChecked;
  }
}
