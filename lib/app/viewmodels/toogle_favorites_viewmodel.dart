import 'package:flutter/material.dart';
import 'package:meals/app/models/meal_model.dart';
import 'package:meals/data/dummy_data.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ToogleFavoritesViewModel extends ChangeNotifier {
  static const mealList = DUMMY_MEALS;
  List<String> _favoriteMeals = [];

  ToogleFavoritesViewModel() {
    _init();
  }

  _init() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    _favoriteMeals = prefs.getStringList('favoriteMeals') ?? [];
  }

  List<MealModel> get items {
    List<MealModel> items = [];

    if (_favoriteMeals.isNotEmpty) {
      items = _favoriteMeals.map((id) {
        return mealList.firstWhere((meal) => meal.id == id);
      }).toList();
    }

    return items;
  }

  void _addFavoriteMeal(MealModel meal) => _favoriteMeals.add(meal.id);
  void _removeFavoriteMeal(MealModel meal) => _favoriteMeals.remove(meal.id);

  void toggleFavoriteMeal(MealModel meal) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    _favoriteMeals.contains(meal.id)
        ? _removeFavoriteMeal(meal)
        : _addFavoriteMeal(meal);

    await prefs.setStringList('favoriteMeals', _favoriteMeals);
    notifyListeners();
  }
}
