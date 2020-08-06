import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  final Function(int index) onTapItem;
  final int selectedIndex;

  const BottomBar({
     @required this.onTapItem,
     @required this.selectedIndex,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Theme.of(context).primaryColor,
      selectedItemColor: Theme.of(context).accentColor,
      currentIndex: selectedIndex,
      onTap: onTapItem,
      items: <BottomNavigationBarItem>[
        const BottomNavigationBarItem(
            icon: Icon(Icons.category),
            title: Text(
              'Categorias',
              style: TextStyle(fontSize: 15),
            )),
        const BottomNavigationBarItem(
            icon: Icon(Icons.star),
            title: Text(
              'Favoritos',
              style: TextStyle(fontSize: 15),
            )),
      ],
    );
  }
  }