import 'package:flutter/material.dart';
import 'package:meals/app/models/category_model.dart';
import 'package:meals/data/dummy_data.dart';
import 'meal_categories_item_widget.dart';

class MealCategoriesGrid extends StatelessWidget {
  static const List<CategoryModel> categories = DUMMY_CATEGORIES;

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
            category: category,
          );
        }).toList());
  }
}