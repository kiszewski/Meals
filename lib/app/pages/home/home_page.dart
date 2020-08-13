import 'package:flutter/material.dart';
import 'package:meals/app/pages/components/drawer/drawer_widget.dart';
import 'package:meals/app/pages/home/components/bottom_bar_widget.dart';
import 'package:meals/app/pages/home/components/favorite_meals_list_widget.dart';
import 'package:meals/app/pages/home/components/meal-grid/meal_categories_grid_widget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  void _onTapItem(int index) {
    setState(() => _selectedIndex = index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: const DrawerWidget(),
        appBar: AppBar(
          title: _selectedIndex == 0 ? const Text('Categorias') : const Text('Favoritos'),
          centerTitle: true,
        ),
        body: _selectedIndex == 0 ? const MealCategoriesGrid() : FavoriteMealsList(),
        bottomNavigationBar: BottomBar(
          onTapItem: _onTapItem,
          selectedIndex: _selectedIndex,
        ));
  }
}
