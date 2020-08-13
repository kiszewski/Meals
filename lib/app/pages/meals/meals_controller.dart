import 'package:meals/app/models/meal_model.dart';
import 'package:meals/data/dummy_data.dart';

class MealsController {
  static final MealsController instance = MealsController._();
  MealsController._();

  static const List<MealModel> mealList = DUMMY_MEALS;

  List<MealModel> getMealsByCategory(String category) {
    return mealList
        .where((meal) => meal.categories.any((cat) => cat == category))
        .toList();
  }
}
