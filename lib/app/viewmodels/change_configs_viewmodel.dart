import 'package:meals/app/models/configs_model.dart';

class ChangeConfigsViewModel {
  final ConfigsModel configs = ConfigsModel();

  changeGluten(bool value) => configs.noGluten.value = value;

  changeLactose(bool value) => configs.noLactose.value = value;

  changeVegan(bool value) => configs.onlyVegan.value = value;
  
  changeVegetarian(bool value) => configs.onlyVegetarian.value = value;
  
}