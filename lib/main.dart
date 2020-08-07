import 'package:flutter/material.dart';
import 'package:meals/components/home-page/home_page.dart';

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
      theme: ThemeData(primaryColor: Colors.red[200], accentColor: Colors.indigo[300]),
      home: HomePage(),
    );
  }
}