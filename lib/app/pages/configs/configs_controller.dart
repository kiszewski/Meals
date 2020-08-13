import 'package:flutter/cupertino.dart';
import 'package:meals/app/viewmodels/change_configs_viewmodel.dart';

class ConfigsController {
  static final instance = ConfigsController._();
  ConfigsController._();

  final ChangeConfigsViewModel changeConfigsViewModel = ChangeConfigsViewModel();

  bool get hasNoGluten => changeConfigsViewModel.configs.noGluten.value;
  bool get noLactose => changeConfigsViewModel.configs.noLactose.value;
  bool get onlyVegan => changeConfigsViewModel.configs.onlyVegan.value;
  bool get onlyVegetarian => changeConfigsViewModel.configs.onlyVegetarian.value;

  ValueNotifier<bool> get noGluten => changeConfigsViewModel.configs.noGluten;

}