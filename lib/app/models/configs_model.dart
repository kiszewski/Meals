import 'package:flutter/cupertino.dart';

class ConfigsModel {
  final noGluten = ValueNotifier<bool>(false);
  final noLactose = ValueNotifier<bool>(false);
  final onlyVegan = ValueNotifier<bool>(false);
  final onlyVegetarian = ValueNotifier<bool>(false);
}