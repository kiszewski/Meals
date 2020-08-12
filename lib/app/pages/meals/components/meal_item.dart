import 'package:flutter/material.dart';
import 'package:meals/app/models/meal_model.dart';
import 'package:meals/app/routes/app_routes.dart';

class MealItem extends StatelessWidget {
  final Meal meal;

  const MealItem({this.meal});

  void _navigateToDetailsMeal(BuildContext context) {
    Navigator.pushNamed(
      context,
      AppRoutes.MEALS_DETAILS,
      arguments: meal,
    );
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constrains) {
      return GestureDetector(
        child: Container(
          padding: EdgeInsets.all(10),
          width: constrains.maxWidth,
          child: Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            child: Column(
              children: <Widget>[
                Stack(children: <Widget>[
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
                  Positioned(
                    bottom: 20,
                    right: 10,
                    width: constrains.maxWidth * 0.7,
                    child: Container(
                      padding: EdgeInsets.all(10),
                      color: Colors.black54,
                      child: Text(
                        meal.title,
                        style: TextStyle(
                            fontSize: 30,
                            color: Colors.white,
                            fontWeight: FontWeight.w300),
                      ),
                    ),
                  )
                ]),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Container(
                      height: 40,
                      child: Row(
                        children: <Widget>[
                          Icon(Icons.access_time),
                          SizedBox(
                            width: 5,
                          ),
                          Text('${meal.duration} min')
                        ],
                      ),
                    ),
                    Container(
                      height: 40,
                      child: Row(
                        children: <Widget>[
                          Icon(Icons.business_center),
                          SizedBox(
                            width: 5,
                          ),
                          Text('${meal.complexityText}')
                        ],
                      ),
                    ),
                    Container(
                      height: 40,
                      child: Row(
                        children: <Widget>[
                          Icon(Icons.attach_money),
                          SizedBox(
                            width: 5,
                          ),
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
        ),
        onTap: () => _navigateToDetailsMeal(context),
      );
    });
  }
}
