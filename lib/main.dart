import 'package:flutter/material.dart';
import 'components/meal_categories_grid.dart';

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
      home: Scaffold(
        appBar: AppBar(
          title: Text('Categorias'),
          centerTitle: true,
        ),
        body: MealCategoriesGrid()
      ),
    );
  }
}
