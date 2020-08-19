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
