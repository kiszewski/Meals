import 'package:meals/app/interfaces/local_storage_interface.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedLocalStorageService implements ILocalStorage {

  @override
  Future put(String key, dynamic value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    if (value is bool) {
      prefs.setBool(key, value);
    }

    if (value is String) {
      prefs.setString(key, value);
    }

    if (value is int) {
      prefs.setInt(key, value);
    }

    if (value is double) {
      prefs.setDouble(key, value);
    }

    if (value is List<String>) {
      prefs.setStringList(key, value);
    }
  }

  @override
  Future delete(String key) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.remove(key);
  }

  @override
  Future<List<String>> getStringList(String key) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getStringList(key);
  }

  @override
  Future<bool> getBool(String key) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getBool(key);
  }
}
