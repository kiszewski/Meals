// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter_test/flutter_test.dart';
import 'package:meals/app/models/configs_model.dart';
import 'package:meals/app/models/meal_model.dart';
import 'package:meals/app/pages/meals/meals_controller.dart';

void main() {

  test('Get meals by category', () {
  ConfigsModel configs = ConfigsModel();
  MealsController mealsController = MealsController.instance;

  final List<MealModel> saladList = mealsController.getMealsByCategory('c5', configs);

  expect(saladList.length, 2);

  });
}
