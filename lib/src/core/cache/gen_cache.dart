import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

class Storage {
  /// Get string value
  /// Argument [key]
  Future<String?> getString(key) async {
    Future<SharedPreferences> prefsInstance = SharedPreferences.getInstance();
    final SharedPreferences prefs = await prefsInstance;
    String? res = prefs.getString("$key");
    return res;
  }

  //remove
  dynamic removeJson(key) async {
    Future<SharedPreferences> prefsInstance = SharedPreferences.getInstance();
    final SharedPreferences prefs = await prefsInstance;
    prefs.remove("$key");
  }

  /// Get list or object
  /// Use import 'dart:convert'; for jsonEncode
  /// Argument [key]
  dynamic getJson(key) async {
    Future<SharedPreferences> prefsInstance = SharedPreferences.getInstance();
    final SharedPreferences prefs = await prefsInstance;
    String? jsonString = prefs.getString("$key");
    var res = jsonDecode(jsonString!);
    return res;
  }

  /// Adding a string value
  Future<bool> putString(key, val) async {
    Future<SharedPreferences> prefsInstance = SharedPreferences.getInstance();
    final SharedPreferences prefs = await prefsInstance;
    var res = prefs.setString("$key", val);
    return res;
  }

  /// Adding a list or object
  /// Use import 'dart:convert'; for jsonEncode
  dynamic putJson(key, val) async {
    Future<SharedPreferences> prefsInstance = SharedPreferences.getInstance();
    final SharedPreferences prefs = await prefsInstance;
    var valString = jsonEncode(val);
    var res = prefs.setString("$key", valString);
    return res;
  }

  dynamic clearPref() async {
    Future<SharedPreferences> prefsInstance = SharedPreferences.getInstance();
    final SharedPreferences prefs = await prefsInstance;

    var res = prefs.clear();
    return res;
  }
}
