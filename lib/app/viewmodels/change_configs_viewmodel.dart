import 'package:flutter/cupertino.dart';
import 'package:meals/app/models/configs_model.dart';

class ChangeConfigsViewModel extends ChangeNotifier {
  final ConfigsModel configs = ConfigsModel();

  changeGluten(bool value) {
    configs.noGluten = value;
    notifyListeners();
  }

    bool get noGluten {
    return configs.noGluten;
  }
}