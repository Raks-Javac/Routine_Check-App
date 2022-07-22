import 'dart:io' show Platform;
import 'package:estate_project/src/features/home/presentation/views/home_screen.dart';
import 'package:estate_project/src/features/routines/create/presentation/views/create_screen.dart';
import 'package:estate_project/src/features/splash_onboarding/presentation/splash_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../features/routines/edit/presentation/views/edit_screen.dart';
import 'route.dart';

abstract class AppRouter {
  static Route<dynamic> generateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case splashScreen:
        return getPageRoute(
          settings: settings,
          view: const SplashScreen(),
        );

      case homeScreen:
        return getPageRoute(
          settings: settings,
          view: const HomeScreen(),
        );
      case createScreen:
        return getPageRoute(
          settings: settings,
          view: CreateScreen(),
        );
      case editScreen:
        return getPageRoute(
          settings: settings,
          view: EditScreenPerRoutine(),
        );

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
