import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
            color: Theme.of(context).primaryColor,
            child: Container(
              height: 60,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      IconButton(
                        constraints: BoxConstraints.tight(Size(25, 25)),
                        padding: EdgeInsets.all(0),
                        icon: Icon(Icons.category),
                        onPressed: () {},
                      ),
                      Text(
                        'Categorias',
                        style: TextStyle(fontSize: 15),
                      )
                    ],
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      IconButton(
                        constraints: BoxConstraints.tight(Size(25, 25)),
                        padding: EdgeInsets.all(0),
                        icon: Icon(Icons.star),
                        onPressed: () {},
                      ),
                      Text(
                        'Favoritos',
                        style: TextStyle(fontSize: 15),
                      )
                    ],
                  ),
                ],
              ),
            ),
            shape: CircularNotchedRectangle(),
          );
  }
}