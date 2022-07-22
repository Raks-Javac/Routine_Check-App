import 'package:flutter/material.dart';

logConsole(dynamic data) => debugPrint("$data");

void closeTextFieldFocus(BuildContext context) {
  final currentFocus = FocusScope.of(context);
  FocusScope.of(context).unfocus();
  if (!currentFocus.hasPrimaryFocus) {
    currentFocus.unfocus();
    return;
  }
  currentFocus.unfocus();
}

SizedBox addVerticalSpacing(double height) {
  return SizedBox(
    height: height,
  );
}

SizedBox addHorizontalSpacing(double width) {
  return SizedBox(
    width: width,
  );
}
