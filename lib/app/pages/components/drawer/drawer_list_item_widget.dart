import 'package:flutter/material.dart';
import 'package:meals/app/viewmodels/pages_navigation_viewmodel.dart';

class DrawerListItem extends StatelessWidget {
  const DrawerListItem({
    Key key,
    @required this.icon,
    @required this.title,
    @required this.route,
  }) : super(key: key);

  final IconData icon;
  final String title;
  final String route;

  @override
  Widget build(BuildContext context) {
    final PagesNavigationViewModel pagesNavigationViewModel = PagesNavigationViewModel();

    return LayoutBuilder(builder: (context, constraints) {
      return Container(
        width: constraints.maxWidth,
        height: constraints.maxWidth * 0.25,
        padding: const EdgeInsets.all(20),
        child: GestureDetector(
          onTap: () => pagesNavigationViewModel.replaceCurrentPage(context, route),
          child: Row(
            children: <Widget>[
              Icon(
                icon,
                size: constraints.maxWidth * 0.1,
                color: Colors.grey[400],
              ),
              SizedBox(
                width: constraints.maxWidth * 0.05,
              ),
              Text(
                title,
                style: TextStyle(fontSize: constraints.maxWidth * 0.07),
              )
            ],
          ),
        ),
      );
    });
  }
}
