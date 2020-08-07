import 'package:flutter/material.dart';
import 'package:meals/models/category.dart';
import 'meal_categories_item.dart';
import '../../data/dummy_data.dart';

class MealCategoriesGrid extends StatelessWidget {
  static const List<Category> categories = DUMMY_CATEGORIES;

  const MealCategoriesGrid();

  @override
  Widget build(BuildContext context) {
    return GridView.count(
        crossAxisCount: 2,
        childAspectRatio: (4 / 3),
        mainAxisSpacing: 15,
        crossAxisSpacing: 15,
        padding: const EdgeInsets.all(20),
        children: categories.map((category) {
          return MealCategoriesItem(
            id: category.id,
            title: category.title,
            color: category.color,
          );
        }).toList());
  }
}