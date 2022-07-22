class Validators {
  static String? checkFieldStatus(String val) {
    if (val.isEmpty) {
      return "Field cannot be empty";
    }
    return null;
  }
}
