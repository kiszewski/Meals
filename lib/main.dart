import 'package:flutter/material.dart';
import 'package:meals/app/pages/configs/configs_controller.dart';
import 'package:meals/app/pages/configs/configs_page.dart';
import 'package:meals/app/pages/home/home_page.dart';
import 'package:meals/app/pages/meals/meals_page.dart';
import 'package:meals/app/routes/app_routes.dart';
import 'package:meals/app/pages/meal_details/meal_details_page.dart';
import 'package:meals/app/models/favorites_model.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => FavoritesModel(),
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: ConfigsController.instance.noGluten,
      builder: (context, hasNoGluten, child) {
        return MaterialApp(
          theme: ThemeData(
              primaryColor: Colors.red[200], accentColor: Colors.indigo[300]),
          routes: {
            AppRoutes.HOME: (context) => HomePage(),
            AppRoutes.MEALS: (context) => MealsPage(),
            AppRoutes.MEALS_DETAILS: (context) => MealDetailsPage(),
            AppRoutes.CONFIGS: (context) => ConfigsPage(),
          },
          initialRoute: AppRoutes.HOME,
        );
      },
    );
  }
}
