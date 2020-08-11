import 'package:flutter/material.dart';
import 'package:meals/components/meal-item/meal_item.dart';
import 'package:meals/utils/favoritesModel.dart';
import 'package:provider/provider.dart';

class FavoriteMealsList extends StatelessWidget {
  const FavoriteMealsList();

  @override
  Widget build(BuildContext context) {
    final favoriteMeals = Provider.of<FavoritesModel>(context);

    return SingleChildScrollView(
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: favoriteMeals.items.isNotEmpty
              ? favoriteMeals.items
                  .map((meal) => MealItem(
                        meal: meal,
                      ))
                  .toList()
              : [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                          margin: EdgeInsets.all(25),
                          child: Text(
                            'Nenhuma refeição na sua lista de favoritas',
                            style: TextStyle(
                              fontSize: 25,
                              color: Colors.black54
                            ),
                            textAlign: TextAlign.center,
                          )),
                    ],
                  )
                ]),
    );
  }
}
