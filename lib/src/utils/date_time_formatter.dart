import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

//a concrete class that handles date format with the intl package which is a singleton
class DateTimeFormatter {
  DateTimeFormatter._();
  static String formatDateTimeToNormalString(DateTime userRoutineDateTime) {
    String? intlFormatter = DateFormat.yMd().add_jm().format(userRoutineDateTime);
    return intlFormatter;
  }

  static String formetDateTimeWithTimeZone(DateTime userRoutineDateTime) {
    String formattedDate =
        DateFormat('yyyy-MM-dd – kk:mm').format(userRoutineDateTime);
    return formattedDate;
  }

  static String formatTimeOfDayObject(
      TimeOfDay timeOfDay, BuildContext context) {
    final MaterialLocalizations localizations =
        MaterialLocalizations.of(context);
    final String formattedTimeOfDay =
        localizations.formatTimeOfDay(timeOfDay, alwaysUse24HourFormat: false);
    return formattedTimeOfDay;
  }
}
