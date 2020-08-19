import 'package:meals/app/interfaces/local_storage_interface.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedLocalStorageService implements ILocalStorage {
  SharedPreferences prefs;

  SharedLocalStorageService() {
    _init();
  }

  _init() async {
    prefs = await SharedPreferences.getInstance();
  }

  @override
  Future put(String key, dynamic value) async {
    if (value is bool) {
      await prefs.setBool(key, value);
    }

    if (value is String) {
      await prefs.setString(key, value);
    }

    if (value is int) {
      await prefs.setInt(key, value);
    }

    if (value is double) {
      await prefs.setDouble(key, value);
    }

    if (value is List<String>) {
      await prefs.setStringList(key, value);
    }
  }

  @override
  Future delete(String key) async {
    await prefs.remove(key);
  }

  @override
  Future get(String key) async {
    await prefs.get(key);
  }
}
