import 'dart:async';
import 'package:estate_project/src/core/base/base_view_model/b_vm.dart';
import 'package:flutter/material.dart';

class SplashScreenProvider extends BaseViewModel {
  final BuildContext? context;
  SplashScreenProvider({this.context});

  startLoadingAndNavigateToNext() {
    changeLoaderStatus(true);
    Future.delayed(const Duration(seconds: 4), () {
      changeLoaderStatus(false);
    });
  }

  navigateBack() {}

  @override
  FutureOr<void> disposeState() {}

  @override
  FutureOr<void> initState() {}
}
