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
            icon: const Icon(Icons.category),
            title: const Text(
              'Categorias',
              style: const TextStyle(fontSize: 15),
            )),
        const BottomNavigationBarItem(
            icon: const Icon(Icons.star),
            title: const Text(
              'Favoritos',
              style: const TextStyle(fontSize: 15),
            )),
      ],
    );
  }
  }