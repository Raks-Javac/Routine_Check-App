
// stores strings
class StringsStore {
  static const String kAppName = "Fluutter Template";

  String emptyEmailField({String? fieldType = "Email"}) =>
      '$fieldType field cannot be empty!';
  static const String emptyPhoneNumber = "Phone number";
  static const String emptyTextField = 'Field cannot be empty!';
  static const String emptyPasswordField = 'Password field cannot be empty';
  static const String invalidEmailField =
      "Email provided isn't valid.Try another email address";
  static const String passwordLengthError =
      'Password length must be greater than 6';
  static const String emptyUsernameField = 'Username  cannot be empty';
  static const String usernameLengthError =
      'Username length must be greater than 6';
  static const String emailRegex = '[a-zA-Z0-9+._%-+]{1,256}' '\\@' +
      '[a-zA-Z0-9][a-zA-Z0-9\\-]{0,64}' +
      '(' +
      '\\.' +
      '[a-zA-Z0-9][a-zA-Z0-9\\-]{0,25}' +
      ')+';

  static const String phoneNumberRegex = r'0[789][01]\d{8}';

  static const String phoneNumberLengthError = 'Phone number must be 11 digits';

  static const String invalidPhoneNumberField =
      "Number provided isn't valid.Try another phone number";
}
