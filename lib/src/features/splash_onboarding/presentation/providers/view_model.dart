import 'dart:async';
import 'package:estate_project/src/core/base/base_view_model/b_vm.dart';
import 'package:estate_project/src/core/navigation/navigator.dart';
import 'package:flutter/material.dart';

class SplashScreenProvider extends BaseViewModel {
  final BuildContext? context;
  SplashScreenProvider({this.context});


  _navigateHomeAfterSplash() {
    return Future.delayed(const Duration(seconds: 4), () {
      AppNavigator.pushNamedAndClear(homeScreen);
    });
  }

  @override
  FutureOr<void> initState() {
    _navigateHomeAfterSplash();
  }

  @override
  FutureOr<void> disposeState() {}
}
