import 'package:flutter/material.dart';
import 'package:meals/app/models/category_model.dart';
import 'package:meals/app/routes/app_routes.dart';
import 'package:meals/app/viewmodels/pages_navigation_viewmodel.dart';

class MealCategoriesItem extends StatelessWidget {
  final CategoryModel category;

  const MealCategoriesItem({@required this.category});

  @override
  Widget build(BuildContext context) {
    final PagesNavigationViewModel pagesNavigationViewModel =
        PagesNavigationViewModel();
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
      onTap: () => pagesNavigationViewModel.navigateToPage(
          context, AppRoutes.MEALS, category),
    );
  }
}
