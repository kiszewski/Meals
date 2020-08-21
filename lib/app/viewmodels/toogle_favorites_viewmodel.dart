import 'package:flutter/material.dart';
import 'package:meals/app/interfaces/local_storage_interface.dart';
import 'package:meals/app/models/meal_model.dart';
import 'package:meals/data/dummy_data.dart';

class ToogleFavoritesViewModel extends ChangeNotifier {
  final ILocalStorage _storage;
  static const _mealList = DUMMY_MEALS;
  List<String> _favoriteMeals = [];

  ToogleFavoritesViewModel(this._storage) {
    _init();
  }

  _init() async => _favoriteMeals = await _storage.getStringList('favoriteMeals') ?? [];

  List<MealModel> get items {
    List<MealModel> items = [];

    if (_favoriteMeals.isNotEmpty) {
      items = _favoriteMeals.map((id) {
        return _mealList.firstWhere((meal) => meal.id == id);
      }).toList();
    }
    return items;
  }

  void _addFavoriteMeal(String id) => _favoriteMeals.add(id);
  void _removeFavoriteMeal(String id) => _favoriteMeals.remove(id);

  void toggleFavoriteMeal(MealModel meal) async {
    _favoriteMeals.contains(meal.id)
        ? _removeFavoriteMeal(meal.id)
        : _addFavoriteMeal(meal.id);

    await _storage.put('favoriteMeals', _favoriteMeals);
    notifyListeners();
  }
}
