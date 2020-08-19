abstract class ILocalStorage {
  Future put(String key, dynamic value);
  Future delete(String key);
  Future get(String key);
}