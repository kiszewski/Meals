import 'package:flutter/material.dart';
import 'package:meals/app/models/category_model.dart';
import 'package:meals/app/models/meal_model.dart';
import 'package:meals/app/pages/meals/components/meal_item_widget.dart';
import 'package:meals/app/pages/meals/meals_controller.dart';
import 'package:meals/app/viewmodels/change_configs_viewmodel.dart';
import 'package:provider/provider.dart';

class MealsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final CategoryModel category = ModalRoute.of(context).settings.arguments;
    final configs = Provider.of<ChangeConfigsViewModel>(context);
    final List<MealModel> mealListFiltered = MealsController.instance.getMealsByCategory(category.id, configs.configs);

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
