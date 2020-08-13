import 'package:flutter/material.dart';
import 'package:meals/app/routes/app_routes.dart';
import 'drawer_list_item_widget.dart';

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
              color: Theme.of(context).accentColor,
              child: Text(
                'Vamos cozinhar?',
                style: TextStyle(
                    fontSize: 40, color: Theme.of(context).primaryColor),
              ),
            ),
            Column(
              children: <Widget>[
                const DrawerListItem(
                  icon: Icons.restaurant,
                  title: 'Refeições',
                  route: AppRoutes.HOME,
                ),
                const DrawerListItem(
                  icon: Icons.settings,
                  title: 'Configurações',
                  route: AppRoutes.CONFIGS,
                ),
              ],
            )
          ],
        );
      }),
    );
  }
}
