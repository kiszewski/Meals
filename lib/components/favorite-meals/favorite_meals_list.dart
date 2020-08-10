import 'package:flutter/material.dart';
import 'package:meals/components/meal-item/meal_item.dart';
import 'package:meals/models/meal.dart';

class FavoriteMealsList extends StatelessWidget {
  final List<Meal> favoriteMeals;

  const FavoriteMealsList(this.favoriteMeals);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: favoriteMeals
            .map((meal) => MealItem(
                  meal: meal,
                ))
            .toList(),
      ),
    );
  }
}
