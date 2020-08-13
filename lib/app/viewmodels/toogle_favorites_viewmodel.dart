import 'package:flutter/material.dart';
import 'package:meals/app/models/favorites_model.dart';
import 'package:meals/app/models/meal_model.dart';

class ToogleFavoritesViewModel extends ChangeNotifier {

  FavoriteMealsModel favoriteModel = FavoriteMealsModel();

  List<MealModel> get items => favoriteModel.favoriteMeals;

  void _addFavoriteMeal(MealModel meal) => favoriteModel.favoriteMeals.add(meal);

  void _removeFavoriteMeal(MealModel meal) => favoriteModel.favoriteMeals.remove(meal);

  void toggleFavoriteMeal(MealModel meal) {
    favoriteModel.favoriteMeals.contains(meal)
        ? _removeFavoriteMeal(meal)
        : _addFavoriteMeal(meal);

    notifyListeners();
  }
}