import 'package:flutter/material.dart';

class ScreenArguments {
  final String id;
  final String title;

  ScreenArguments(this.title, this.id);
}

class MealCategoriesItem extends StatelessWidget {
  final String id;
  final String title;
  final Color color;

  const MealCategoriesItem({
    @required this.id,
    @required this.title,
    @required this.color,
  });

  navigateToMeals(BuildContext context, ScreenArguments arguments) {
    Navigator.pushNamed(
      context,
      '/meals',
      arguments: arguments,
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Card(
        elevation: 5,
        child: Padding(
            padding: EdgeInsets.all(20),
            child: Text(
              title,
              style: TextStyle(fontSize: 20),
            )),
        color: color.withOpacity(0.65),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      ),
      onTap: () {
        navigateToMeals(context, ScreenArguments(this.title, this.id));
      },
    );
  }
}
