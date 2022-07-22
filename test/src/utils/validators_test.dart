import 'package:estate_project/src/utils/validators.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test("test when fiels is not ", () {
    String? checkValidatorForInput = Validators.checkFieldStatus("edit");
    expect(checkValidatorForInput, null);
  });
  test("test for when the field is empty", () {
    String? checkValidatorForInput = Validators.checkFieldStatus("");
    expect(checkValidatorForInput, "Field cannot be empty");
  });
}
