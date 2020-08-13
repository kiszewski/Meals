import 'package:flutter/material.dart';

class PagesNavigationViewModel {
  PagesNavigationViewModel();

  navigateToPage(BuildContext context, String route, Object arguments) {
    Navigator.pushNamed(
      context,
      route,
      arguments: arguments,
    );
  }

  replaceCurrentPage(BuildContext context, String route) {
    Navigator.of(context).pushReplacementNamed(route);
  }
}
