import 'dart:developer';

import 'package:estate_project/src/utils/functions.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('testing display of strings of first characters', () {
    String testCharacters = getFirstCharactersOfRoutine("Race Today");
    log(testCharacters);
    expect(testCharacters, "RT");
  });
}
