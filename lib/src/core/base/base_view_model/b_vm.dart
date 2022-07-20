import 'dart:async';
import 'dart:developer';
import 'package:estate_project/src/utils/enums.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

abstract class BaseViewModel extends ChangeNotifier {
  bool _isLoading = false;
  bool _isDisposed = false;
  bool _isInitializeDone = false;
  ViewState _state = ViewState.idle;

  bool get isLoading => _isLoading;
  bool get isDisposed => _isDisposed;
  ViewState get state => _state;
  bool get isInitialized => _isInitializeDone;

  FutureOr<void> _initState;

  BaseViewModel() {
    SchedulerBinding.instance.addPostFrameCallback((_) {
      //after displaying the frames on schedule we want to run our init function
      //this makes us avoid using stateful widget while using this architecture
      _init();
      log("init called VM...");
    });
  }

  FutureOr<void> initState();
  FutureOr<void> disposeState();

//this serves as an init state
  void _init() async {
    _initState = initState();
    await _initState;
    _isInitializeDone = true;
    initState();
  }

//changes the state of the bool based on the supplied parameter
  changeLoaderStatus(bool status) {
    _isLoading = status;
    notifyListeners();
  }

//we can keep track of the state of the ui with this  function
  changeEnumState(ViewState viewState) {
    _state = viewState;
    notifyListeners();
  }

  @override
  void dispose() {
    _isDisposed = true;
    disposeState();
    super.dispose();
  }
}
