import 'package:flutter/material.dart';
import 'package:meals/app/models/category_model.dart';
import 'package:meals/app/models/meal_model.dart';
import 'package:meals/app/pages/meals/components/meal_item.dart';
import 'package:meals/data/dummy_data.dart';

class MealsPage extends StatelessWidget {
  static const List<Meal> mealList = DUMMY_MEALS;

  List<Meal> getMealsByCategory(String category) {
    return mealList
        .where((meal) => meal.categories.any((cat) => cat == category))
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    final Category category = ModalRoute.of(context).settings.arguments;
    final List<Meal> mealListFiltered = getMealsByCategory(category.id);

    return Scaffold(
      appBar: AppBar(
        title: Text(category.title),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children:
              mealListFiltered.map((meal) => MealItem(meal: meal)).toList(),
        ),
      ),
    );
  }
}
