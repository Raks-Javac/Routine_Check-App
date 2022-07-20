import 'dart:io' show Platform;
import 'package:estate_project/src/features/first_screen/first_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'route.dart';

abstract class AppRouter {
  static Route<dynamic> generateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case splashScreen:
        return getPageRoute(
          settings: settings,
          view: const SplashScreen(),
        );

      // case registerRoute:
      //   return getPageRoute(
      //     settings: settings,
      //     view: const RegisterScreen(),
      //   );
      default:
        return getPageRoute(
          settings: settings,
          view: Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }

  static PageRoute<dynamic> getPageRoute({
    required RouteSettings settings,
    required Widget view,
  }) {
    return Platform.isIOS
        ? CupertinoPageRoute(settings: settings, builder: (_) => view)
        : MaterialPageRoute(settings: settings, builder: (_) => view);
  }
}
