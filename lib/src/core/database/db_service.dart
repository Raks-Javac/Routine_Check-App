//this provider would contain would contain  our hive service

import 'dart:async';
import 'dart:collection';
import 'dart:developer';
import 'package:estate_project/src/core/base/base_view_model/b_vm.dart';
import 'package:estate_project/src/core/database/box_keys.dart';
import 'package:estate_project/src/core/database/routinedb.dart';
import 'package:estate_project/src/utils/functions.dart';
import 'package:hive_flutter/hive_flutter.dart';

//indirectly all your view models that want to use the hive service can extend the hive service viewmodel and overwrite in certain flow
//which can also to be mocked for testing

class HiveService extends BaseViewModel {
  @override
  FutureOr<void> initState() async {
    log("instantiating --->>> hive service");
    String hi = getFirstCharactersOfRoutine("Table Cut");
    logConsole(hi);
  }

  @override
  FutureOr<void> disposeState() async {
    //close the hive box after the hive box have been dispose
    await Hive.close();
  }

  //database logic
  List<RoutineDb> routineDbList = [];
  UnmodifiableListView<RoutineDb> get routineDbListGetter =>
      UnmodifiableListView(routineDbList);

  // Create new routine of the routineDb model
  Future<void> createARoutine(RoutineDb routineDb) async {
    log("ref creating a routine of title =>>> ${routineDb.title}");
    Box<RoutineDb> box = await Hive.openBox<RoutineDb>(routineDbBoxKeys);
    await box.add(routineDb);
    routineDbList.add(routineDb);
    routineDbList = box.values.toList();
    notifyListeners();
  }

  // Get a list of routineDb model in the database
  Future<List<RoutineDb>> getRoutineItems() async {
    Box<RoutineDb> box = await Hive.openBox<RoutineDb>(routineDbBoxKeys);
    routineDbList = box.values.toList();
    return routineDbList;
  }

  // remove a routinebd model based on the key in the database
  Future<void> addItem(RoutineDb routineDb) async {
    Box<RoutineDb> box = await Hive.openBox<RoutineDb>(routineDbBoxKeys);
    await box.delete(routineDb.key);
    routineDbList = box.values.toList();
    notifyListeners();
  }
}
