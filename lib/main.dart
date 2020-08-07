import 'package:flutter/material.dart';
import 'package:meals/screens/home_page.dart';
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
        '/home': (context) => HomePage(),
        '/meals': (context) => MealsPage(),
        '/meal_details': (context) => Text('ola em detalhe'),
       },
      initialRoute: '/home',
    );
  }
}