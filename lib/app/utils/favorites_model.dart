import 'package:flutter/cupertino.dart';
import 'package:meals/app/models/meal_model.dart';

class FavoritesModel extends ChangeNotifier {
  List<MealModel> _favoriteMeals = [];

  void _addFavoriteMeal(MealModel meal) => _favoriteMeals.add(meal);

  void _removeFavoriteMeal(MealModel meal) => _favoriteMeals.remove(meal);

  void toggleFavoriteMeal(MealModel meal) {
    _favoriteMeals.contains(meal)
        ? _removeFavoriteMeal(meal)
        : _addFavoriteMeal(meal);

    notifyListeners();
  }

  List<MealModel> get items => _favoriteMeals;
}
