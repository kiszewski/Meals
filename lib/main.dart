import 'package:flutter/material.dart';
import 'components/meal-grid/meal_categories_grid.dart';
import 'components/bottom_bar.dart';
import 'components/drawer/drawer_widget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.red[300], accentColor: Colors.teal),
      home: Scaffold(
          drawer: const DrawerWidget(),
          appBar: AppBar(
            title: const Text('Categorias'),
            centerTitle: true,
          ),
          body: const MealCategoriesGrid(),
          bottomNavigationBar: const BottomBar()),
    );
  }
}