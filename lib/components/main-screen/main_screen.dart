import 'package:flutter/material.dart';
import 'package:meals/components/bottom-bar/bottom_bar.dart';
import 'package:meals/components/drawer/drawer_widget.dart';
import 'package:meals/components/screens/favorite-meals/favorite_meals_list.dart';
import 'package:meals/components/screens/meal-grid/meal_categories_grid.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  void _onTapItem(int index) {
    setState(() => _selectedIndex = index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: const DrawerWidget(),
        appBar: AppBar(
          title: _selectedIndex == 0 ? Text('Categorias') : Text('Favoritos'),
          centerTitle: true,
        ),
        body: _selectedIndex == 0 ? MealCategoriesGrid() : FavoriteMealsList(),
        bottomNavigationBar: BottomBar(
          onTapItem: _onTapItem,
          selectedIndex: _selectedIndex,
        ));
  }
}
