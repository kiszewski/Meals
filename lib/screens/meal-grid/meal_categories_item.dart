import 'package:flutter/material.dart';

class MealCategoriesItem extends StatelessWidget {
  final String title;
  final Color color;

  const MealCategoriesItem({
    @required this.title,
    @required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      child: Padding(
          padding: EdgeInsets.all(20),
          child: Text(
            title,
            style: TextStyle(fontSize: 20),
          )),
      color: color,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
    );
  }
}
