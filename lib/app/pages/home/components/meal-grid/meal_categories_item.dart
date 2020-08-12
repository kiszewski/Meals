import 'package:flutter/material.dart';
import 'package:meals/app/models/category_model.dart';
import 'package:meals/app/routes/app_routes.dart';

class MealCategoriesItem extends StatelessWidget {
final Category category;

  const MealCategoriesItem({
    @required this.category
  });

  _navigateToMeals(BuildContext context, Category category) {
    Navigator.pushNamed(
      context,
      AppRoutes.MEALS,
      arguments: category,
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Card(
        elevation: 5,
        child: Padding(
            padding: const EdgeInsets.all(20),
            child: Text(
              category.title,
              style: const TextStyle(fontSize: 20),
            )),
        color: category.color.withOpacity(0.65),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      ),
      onTap: () {
        _navigateToMeals(context, category);
      },
    );
  }
}
