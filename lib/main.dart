import 'package:flutter/material.dart';
import 'components/meal_categories_grid.dart';
import 'components/bottom_bar.dart';

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
      theme: ThemeData(
        primaryColor: Colors.red[300],
        accentColor: Colors.teal
      ),
      home: Scaffold(
          appBar: AppBar(
            title: Text('Categorias'),
            centerTitle: true,
          ),
          body: MealCategoriesGrid(),
          bottomNavigationBar: BottomBar()),
    );
  }
}
