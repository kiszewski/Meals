import 'package:flutter/cupertino.dart';
import 'package:meals/app/interfaces/local_storage_interface.dart';
import 'package:meals/app/models/configs_model.dart';

class ChangeConfigsViewModel extends ChangeNotifier {
  final ILocalStorage _storage;

  ChangeConfigsViewModel(this._storage) {
    _init();
  }

  _init() async {
    configs.noGluten = await _storage.getBool('noGluten') ?? false;
    configs.noLactose = await _storage.getBool('noLactose') ?? false;
    configs.onlyVegan = await _storage.getBool('onlyVegan') ?? false;
    configs.onlyVegetarian = await _storage.getBool('onlyVegetarian') ?? false;
  }

  final ConfigsModel configs = ConfigsModel();

  changeGluten(bool value) {
    configs.noGluten = value;
    this._storage.put('noGluten', value);
    notifyListeners();
  }

  changeLactose(bool value) {
    configs.noLactose = value;
    this._storage.put('noLactose', value);
    notifyListeners();
  }

  changeVegan(bool value) {
    configs.onlyVegan = value;
    this._storage.put('onlyVegan', value);
    notifyListeners();
  }

  changeVegetarian(bool value) {
    configs.onlyVegetarian = value;
    this._storage.put('onlyVegetarian', value);
    notifyListeners();
  }

  bool get noGluten {
    return configs.noGluten;
  }

  bool get noLactose {
    return configs.noLactose;
  }

  bool get onlyVegan {
    return configs.onlyVegan;
  }

  bool get onlyVegetarian {
    return configs.onlyVegetarian;
  }
}
