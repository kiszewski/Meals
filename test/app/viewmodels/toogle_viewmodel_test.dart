import 'package:flutter_test/flutter_test.dart';
import 'package:meals/app/interfaces/local_storage_interface.dart';
import 'package:meals/app/models/meal_model.dart';
import 'package:meals/app/viewmodels/toogle_favorites_viewmodel.dart';

void main() {
  ILocalStorage storage = MockLocalStorageService();
  ToogleFavoritesViewModel viewModel = ToogleFavoritesViewModel(storage);
  MealModel meal = MealModel(
    id: 'm2',
    categories: ['c2'],
    title: 'Toast Hawaii',
    cost: Cost.Cheap,
    complexity: Complexity.Simple,
    imageUrl:
        'https://cdn.pixabay.com/photo/2018/07/11/21/51/toast-3532016_1280.jpg',
    duration: 10,
    ingredients: [
      '1 Slice White Bread',
      '1 Slice Ham',
      '1 Slice Pineapple',
      '1-2 Slices of Cheese',
      'Butter'
    ],
    steps: [
      'Butter one side of the white bread',
      'Layer ham, the pineapple and cheese on the white bread',
      'Bake the toast for round about 10 minutes in the oven at 200°C'
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: false,
  );

  test('toggle favorite in the list', () {
    expect(viewModel.items.length, 0);

    viewModel.toggleFavoriteMeal(meal);

    expect(viewModel.items.length, 1);

    viewModel.toggleFavoriteMeal(meal);
    
    expect(viewModel.items.length, 0);
  });
}

class MockLocalStorageService implements ILocalStorage {
  @override
  Future delete(String key) {
    return Future.value();
  }

  @override
  Future getStringList(String key) {
    return Future.value();
  }

  @override
  Future put(String key, value) {
    return Future.value();
  }

  @override
  Future getBool(String key) {
    return Future.value();
  }
}
