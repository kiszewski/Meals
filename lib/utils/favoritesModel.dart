import 'dart:collection';

import 'package:flutter/cupertino.dart';
import 'package:meals/models/meal.dart';

class FavoritesModel extends ChangeNotifier {
  List<Meal> _favoriteMeals = [];

  void addFavoriteMeal(Meal meal) {
    _favoriteMeals.add(meal);
    notifyListeners();
  }

  List<Meal> get items => _favoriteMeals;
}