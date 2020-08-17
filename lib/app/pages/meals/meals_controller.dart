import 'package:meals/app/models/configs_model.dart';
import 'package:meals/app/models/meal_model.dart';
import 'package:meals/data/dummy_data.dart';

class MealsController {
  static final MealsController instance = MealsController._();
  MealsController._();

  static const List<MealModel> _mealList = DUMMY_MEALS;

  List<MealModel> getMealsByCategory(String category, ConfigsModel configs) {
    return _mealList
        .where((meal) => meal.categories.any((cat) => cat == category))
        .where((meal) => configs.noGluten ? meal.isGlutenFree && configs.noGluten : true)
        .where((meal) => configs.noLactose ? meal.isLactoseFree && configs.noLactose : true)
        .where((meal) => configs.onlyVegan ? meal.isVegan && configs.onlyVegan : true)
        .where((meal) => configs.onlyVegetarian ? meal.isVegetarian && configs.onlyVegetarian : true)
        .toList();
  }
}
