import 'package:flutter/material.dart';
import 'package:meals/routes/app_routes.dart';
import 'package:meals/screens/home_page.dart';
import 'package:meals/screens/meal_details_page.dart';
import 'package:meals/screens/meals_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
@override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.red[200], accentColor: Colors.indigo[300]),
      routes: {
        AppRoutes.HOME: (context) => HomePage(),
        AppRoutes.MEALS: (context) => MealsPage(),
        AppRoutes.MEALS_DETAILS: (context) => MealDetailsPage(),
       },
      initialRoute: AppRoutes.HOME,
    );
  }
}