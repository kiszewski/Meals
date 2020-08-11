import 'package:flutter/material.dart';
import 'package:meals/components/meal-item/meal_item.dart';
import 'package:meals/utils/favoritesModel.dart';
import 'package:provider/provider.dart';

class FavoriteMealsList extends StatelessWidget {
  const FavoriteMealsList();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
          children: Provider.of<FavoritesModel>(context)
              .items
              .map((meal) => MealItem(
                    meal: meal,
                  ))
              .toList()),
    );
  }
}
