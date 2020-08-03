import 'package:flutter/material.dart';

class MealCategoriesItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      child: Padding(
          padding: EdgeInsets.all(20),
          child: Text(
            'Italiano',
            style: TextStyle(
              fontSize: 20
            ),
          )),
      color: Theme.of(context).primaryColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
    );
  }
}
