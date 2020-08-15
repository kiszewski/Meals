import 'package:flutter/cupertino.dart';
import 'package:meals/app/models/configs_model.dart';

class ChangeConfigsViewModel extends ChangeNotifier {
  final ConfigsModel configs = ConfigsModel();

  changeGluten(bool value) {
    configs.noGluten = value;
    notifyListeners();
  }

  changeLactose(bool value) {
    configs.noLactose = value;
    notifyListeners();
  }

  changeVegan(bool value) {
    configs.onlyVegan = value;
    notifyListeners();
  }

  changeVegetarian(bool value) {
    configs.onlyVegetarian = value;
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
