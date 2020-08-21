abstract class ILocalStorage {
  Future put(String key, dynamic value);
  Future delete(String key);
  Future getStringList(String key);
  Future getBool(String key);
}