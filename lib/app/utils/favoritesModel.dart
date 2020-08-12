import 'package:flutter/cupertino.dart';
import 'package:meals/app/models/meal_model.dart';

class FavoritesModel extends ChangeNotifier {
  List<Meal> _favoriteMeals = [];

  void _addFavoriteMeal(Meal meal) => _favoriteMeals.add(meal);

  void _removeFavoriteMeal(Meal meal) => _favoriteMeals.remove(meal);

  void toggleFavoriteMeal(Meal meal) {
    _favoriteMeals.contains(meal)
        ? _removeFavoriteMeal(meal)
        : _addFavoriteMeal(meal);

    notifyListeners();
  }

  List<Meal> get items => _favoriteMeals;
}
