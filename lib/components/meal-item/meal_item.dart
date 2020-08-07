import 'package:flutter/material.dart';
import 'package:meals/models/meal.dart';

class MealItem extends StatelessWidget {
  final Meal meal;

  const MealItem({Key key, this.meal}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constrains) {
      return Container(
        padding: EdgeInsets.all(10),
        width: constrains.maxWidth,
        child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          child: Column(
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)),
                child: Image.network(
                  meal.imageUrl,
                  height: constrains.maxWidth * 0.5,
                  width: constrains.maxWidth,
                  fit: BoxFit.fitWidth,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Container(
                    height: 40,
                    child: Row(
                      children: <Widget>[
                        Icon(Icons.access_time),
                        SizedBox(width: 5,),
                        Text('${meal.duration} min')
                      ],
                    ),
                  ),
                  Container(
                    height: 40,
                    child: Row(
                      children: <Widget>[
                        Icon(Icons.business_center),
                        SizedBox(width: 5,),
                        Text('${meal.complexityText}')
                      ],
                    ),
                  ),
                  Container(
                    height: 40,
                    child: Row(
                      children: <Widget>[
                        Icon(Icons.attach_money),
                        SizedBox(width: 5,),
                        Text('${meal.costText}')
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
          elevation: 5,
        ),
      );
    });
  }
}
