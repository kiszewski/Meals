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
}