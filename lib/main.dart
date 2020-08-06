import 'package:flutter/material.dart';
import 'package:meals/components/screens/favorite-meals/favorite_meals_list.dart';
import 'components/main-screen/main_screen.dart';
import 'components/screens/meal-grid/meal_categories_grid.dart';

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
      theme: ThemeData(primaryColor: Colors.red[300], accentColor: Colors.indigo),
      home: MainScreen(),
    );
  }
}

