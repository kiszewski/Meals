import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  const BottomBar();

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Theme.of(context).primaryColor,
      selectedItemColor: Theme.of(context).accentColor,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
            icon: IconButton(
              constraints: BoxConstraints.tight(Size(25, 25)),
              padding: EdgeInsets.all(0),
              icon: Icon(Icons.category),
              onPressed: () {},
            ),
            title: Text(
              'Categorias',
              style: TextStyle(fontSize: 15),
            )),
        BottomNavigationBarItem(
            icon: IconButton(
              constraints: BoxConstraints.tight(Size(25, 25)),
              padding: EdgeInsets.all(0),
              icon: Icon(Icons.star),
              onPressed: () {},
            ),
            title: Text(
              'Favoritos',
              style: TextStyle(fontSize: 15),
            )),
            
      ],
    );
  }
}
