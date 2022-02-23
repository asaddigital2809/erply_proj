import 'package:shared_preferences/shared_preferences.dart';

void saveSession(key) async {
  SharedPreferences preferences = await SharedPreferences.getInstance();
  preferences.setString('key', key);
}