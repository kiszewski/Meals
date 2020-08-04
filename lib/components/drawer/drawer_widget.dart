import 'package:flutter/material.dart';
import 'drawer_list_item.dart';

class DrawerWidget extends StatelessWidget {

  const DrawerWidget();

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: LayoutBuilder(builder: (context, constraints) {
        return Column(
          children: <Widget>[
            Container(
              width: constraints.maxWidth,
              height: 150,
              alignment: Alignment.bottomCenter,
              padding: const EdgeInsets.all(20),
              color: Colors.yellow,
              child: Text(
                'Vamos cozinhar?',
                style: TextStyle(
                    fontSize: 40, color: Theme.of(context).primaryColor),
              ),
            ),
            Column(
              children: <Widget>[
                const DrawerListItem(icon: Icons.restaurant, title: 'Refeições'),
                const DrawerListItem(icon: Icons.settings, title: 'Configurações'),
              ],
            )
          ],
        );
      }),
    );
  }
}
