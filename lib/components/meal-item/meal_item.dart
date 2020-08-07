import 'package:flutter/material.dart';

class MealItem extends StatelessWidget {
final title;

  const MealItem({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Text(title),
    );
  }
}
