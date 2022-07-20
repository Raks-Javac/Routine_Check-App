import 'package:flutter/material.dart';
import 'res.dart';

class RoutineCheckThemeData {
  static final ThemeData lightTheme = ThemeData(
    primaryColor: RoutineCheckAppColors.primary,
    scaffoldBackgroundColor: RoutineCheckAppColors.tertiary,
    splashColor: Colors.transparent,
    brightness: Brightness.light,
    highlightColor: Colors.transparent,
    dividerColor: Colors.transparent,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      showUnselectedLabels: true,
      backgroundColor: RoutineCheckAppColors.tertiary,
      selectedItemColor: RoutineCheckAppColors.primary,
      type: BottomNavigationBarType.fixed,
    ),
    inputDecorationTheme: InputDecorationTheme(
      contentPadding: const EdgeInsets.only(
        top: (1 * RoutineCheckAppDecorators.fontSize),
        bottom: (1 * RoutineCheckAppDecorators.fontSize),
        right: (1 * RoutineCheckAppDecorators.fontSize),
        left: (1 * RoutineCheckAppDecorators.fontSize),
      ),
      hintStyle: TextStyles.body.copyWith(color: RoutineCheckAppColors.grey60),
      fillColor: RoutineCheckAppColors.black,
      border: RoutineCheckAppDecorators.defaultLightBorder,
      enabledBorder:RoutineCheckAppDecorators.enabledLightBorder,
      focusedBorder:RoutineCheckAppDecorators.focusedLightBorder,
      focusedErrorBorder: RoutineCheckAppDecorators.focusedErrorLightBorder,
      disabledBorder:RoutineCheckAppDecorators.disabledLightBorder,
    ),
    textTheme: TextTheme(
      headline1: TextStyles.headline1,
      bodyText1: TextStyles.body,
      bodyText2: TextStyles.body,
      button: TextStyles.body,
      caption: TextStyles.body,
      headline2: TextStyles.headline2,
      headline3: TextStyles.headline3,
      headline4: TextStyles.headline4,
      subtitle2: TextStyles.subtitle,
      subtitle1: TextStyles.subtitle,
    ),
  );

  static final ThemeData darkTheme = ThemeData(
    primaryColor:RoutineCheckAppColors.primary,
    scaffoldBackgroundColor:RoutineCheckAppColors.tertiary,
    splashColor: Colors.transparent,
    brightness: Brightness.dark,
    highlightColor: Colors.transparent,
    dividerColor: Colors.transparent,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      showUnselectedLabels: true,
      backgroundColor: RoutineCheckAppColors.tertiary,
      selectedItemColor: RoutineCheckAppColors.primary,
      type: BottomNavigationBarType.fixed,
    ),
    inputDecorationTheme: InputDecorationTheme(
      contentPadding: const EdgeInsets.only(
        top: (1 *RoutineCheckAppDecorators.fontSize),
        bottom: (1 * RoutineCheckAppDecorators.fontSize),
        right: (1 * RoutineCheckAppDecorators.fontSize),
        left: (1 *RoutineCheckAppDecorators.fontSize),
      ),
      hintStyle: TextStyles.body.copyWith(color:RoutineCheckAppColors.grey60),
      fillColor: RoutineCheckAppColors.black,
      border: RoutineCheckAppDecorators.defaultLightBorder,
      enabledBorder: RoutineCheckAppDecorators.enabledLightBorder,
      focusedBorder: RoutineCheckAppDecorators.focusedLightBorder,
      focusedErrorBorder: RoutineCheckAppDecorators.focusedErrorLightBorder,
      disabledBorder: RoutineCheckAppDecorators.disabledLightBorder,
    ),
    textTheme: TextTheme(
      headline1: TextStyles.headline1,
      bodyText1: TextStyles.body,
      bodyText2: TextStyles.body,
      button: TextStyles.body,
      caption: TextStyles.body,
      headline2: TextStyles.headline2,
      headline3: TextStyles.headline3,
      headline4: TextStyles.headline4,
      subtitle2: TextStyles.subtitle,
      subtitle1: TextStyles.subtitle,
    ),
  );
}
