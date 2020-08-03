import 'package:flutter/material.dart';
import 'meal_categories_item.dart';

class MealCategoriesGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
          crossAxisCount: 2,
          childAspectRatio: (4/3),
          mainAxisSpacing: 15,
          crossAxisSpacing: 15,          
          padding: EdgeInsets.all(20),
          children: <Widget>[
            MealCategoriesItem(),
            MealCategoriesItem(),
          ],
        );
  }
}