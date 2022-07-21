import 'package:flutter/material.dart';
import 'res.dart';

//this is an abstract class of app  field dectorators
class RoutineCheckAppDecorators {
  //making the class a singleton to make it only as one instance through out the app
  RoutineCheckAppDecorators._();

  //default fontSize
  static const double fontSize = 14;

  static InputBorder get defaultLightBorder => OutlineInputBorder(
        borderRadius: BorderRadius.circular(6),
        borderSide: BorderSide(
          color: RoutineCheckAppColors.grey60,
        ),
      );

  static InputBorder get enabledLightBorder => OutlineInputBorder(
        borderRadius: BorderRadius.circular(6),
        borderSide: BorderSide(
          color: RoutineCheckAppColors.grey60,
        ),
      );

  static InputBorder get focusedLightBorder => OutlineInputBorder(
        borderRadius: BorderRadius.circular(6),
        borderSide: BorderSide(
          color: RoutineCheckAppColors.grey60,
          width: 2,
        ),
      );

  static InputBorder get errorLightBorder => OutlineInputBorder(
        borderRadius: BorderRadius.circular(6),
        borderSide: const BorderSide(color: Color(0xFFFB4E4E)),
      );

  static InputBorder get disabledLightBorder => OutlineInputBorder(
        borderRadius: BorderRadius.circular(6),
        borderSide: BorderSide(
          color: RoutineCheckAppColors.grey60,
          width: 0,
        ),
      );

  static InputBorder get focusedErrorLightBorder => OutlineInputBorder(
        borderRadius: BorderRadius.circular(6),
        borderSide: BorderSide(color: RoutineCheckAppColors.error),
      );

  static InputBorder get defaultDarkBorder => OutlineInputBorder(
        borderRadius: BorderRadius.circular(6),
        borderSide: BorderSide(
          color: RoutineCheckAppColors.grey60,
        ),
      );

  static InputBorder get enabledDarkBorder => OutlineInputBorder(
        borderRadius: BorderRadius.circular(6),
        borderSide: BorderSide(
          color: RoutineCheckAppColors.grey60,
        ),
      );

  static InputBorder get focusedDarkBorder => OutlineInputBorder(
        borderRadius: BorderRadius.circular(6),
        borderSide: BorderSide(
          color: RoutineCheckAppColors.grey60,
          width: 2,
        ),
      );

  static InputBorder get errorDarkBorder => OutlineInputBorder(
        borderRadius: BorderRadius.circular(6),
        borderSide: const BorderSide(color: Color(0xFFFB4E4E)),
      );

  static InputBorder get disabledDarkBorder => OutlineInputBorder(
        borderRadius: BorderRadius.circular(6),
        borderSide: BorderSide(
          color: RoutineCheckAppColors.grey60,
          width: 0,
        ),
      );

  static InputBorder get focusedErrorDarkBorder => OutlineInputBorder(
        borderRadius: BorderRadius.circular(6),
        borderSide: BorderSide(color: RoutineCheckAppColors.error),
      );

  static Decoration get tabBackground => BoxDecoration(
        color: RoutineCheckAppColors.grey10,
        borderRadius: BorderRadius.circular(
          10.0,
        ),
      );

  static Decoration get tabHomeIndicatorDecoration => BoxDecoration(
        borderRadius: BorderRadius.circular(
          10.0,
        ),
        color: RoutineCheckAppColors.primary,
      );
}
