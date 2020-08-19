import 'package:flutter/material.dart';
import 'package:meals/app/models/meal_model.dart';
import 'package:meals/app/viewmodels/toogle_favorites_viewmodel.dart';
import 'package:provider/provider.dart';

class MealDetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ToogleFavoritesViewModel favorites = Provider.of<ToogleFavoritesViewModel>(context);
    final MealModel meal = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      appBar: AppBar(
        title: Text(meal.title),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.network(
              meal.imageUrl,
              height: 250,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            Container(
              alignment: Alignment.topLeft,
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.only(bottom: 15),
                    child: Text(
                      'Ingredientes',
                      style: TextStyle(
                        fontSize: 30,
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                  ),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: meal.ingredients.map((ingr) {
                        return Container(
                          margin: const EdgeInsets.only(bottom: 5),
                          child: Text(
                            ingr,
                            style: const TextStyle(
                              fontSize: 20,
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                  )
                ],
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.only(bottom: 15),
                    child: Text(
                      'Modo de preparo',
                      style: TextStyle(
                        fontSize: 30,
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                  ),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: meal.steps.map((step) {
                        return Container(
                          margin: const EdgeInsets.only(bottom: 5),
                          child: Text(
                            '${meal.steps.indexOf(step) + 1} - $step',
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.star,
          color: favorites.items.contains(meal) ? Colors.yellow : Colors.white,
        ),
        onPressed: () {
          favorites.toggleFavoriteMeal(meal);
        },
      ),
    );
  }
}
