import 'package:shared_preferences/shared_preferences.dart';
import 'package:wheater_app/config/constants/constants.dart';

class UserPreferences {
  static final UserPreferences _instance = UserPreferences._internal();

  late SharedPreferences _prefs;

  UserPreferences._internal();

  factory UserPreferences() {
    return _instance;
  }

  init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  // ---  delete all preferences ---
  void deleteAllPreferences() async {
    await _prefs.clear();
  }

  // ---  values ---
  String get token => _prefs.getString(Constants.kTokenKey) ?? '';
  set token(String value) {
    _prefs.setString(Constants.kTokenKey, value);
  }

}
