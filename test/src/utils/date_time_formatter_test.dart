import 'package:estate_project/src/utils/date_time_formatter.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('date time formatter .. to string based on test routine time', () {
    var testUserRoutineTime = DateTime(2022, 1, 1, 1, 1, 1, 1, 1);
    String dateClassType =
        DateTimeFormatter.formatDateTimeToNormalString(testUserRoutineTime);
    expect(dateClassType, "1/1/2022 1:01 AM");
  });
}
