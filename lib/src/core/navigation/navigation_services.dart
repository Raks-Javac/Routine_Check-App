import 'package:estate_project/src/animations/animate_screen.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

class NavigationService {
  final GlobalKey<NavigatorState> _navigationKey = GlobalKey<NavigatorState>();
  final GlobalKey<ScaffoldMessengerState> _scaffoldMessengerKey =
      GlobalKey<ScaffoldMessengerState>();

//holding this key to any screen u wanna navigate to
  GlobalKey<NavigatorState> get navigationKey => _navigationKey;
  GlobalKey<ScaffoldMessengerState> get scaffoldKey => _scaffoldMessengerKey;

  void pop() => _navigationKey.currentState!.pop();

  Future<dynamic> navigateToNamed(String routeName, {dynamic arguments}) {
    return _navigationKey.currentState!
        .pushNamed(routeName, arguments: arguments);
  }

  Future<dynamic> navigateToWidget(Widget screen, {dynamic arguments}) {
    return _navigationKey.currentState!
        .push(PreviewSlideRoute(preview: screen, duration: 2));
  }

  Future<dynamic> navigateToReplacingWidget(Widget screen,
      {dynamic arguments}) {
    return _navigationKey.currentState!.pushAndRemoveUntil(
        PreviewSlideRoute(preview: screen, duration: 2), (route) => false);
  }
}

pushReplaceScreen(Widget screen) {
  GetIt.I<NavigationService>().navigateToReplacingWidget(screen);
}

pushScreen(Widget screen) {
  GetIt.I<NavigationService>().navigateToWidget(screen);
}

popScreen() {
  GetIt.I<NavigationService>().pop();
}
