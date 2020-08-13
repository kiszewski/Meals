import 'package:flutter/material.dart';
import 'package:meals/app/viewmodels/change_configs_viewmodel.dart';
import 'package:provider/provider.dart';

import 'app/app_widget.dart';
import 'app/viewmodels/toogle_favorites_viewmodel.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(
        create: (context) => ToogleFavoritesViewModel(),
      ),
      ChangeNotifierProvider(
        create: (context) => ChangeConfigsViewModel(),
      ),

    ],
    child: AppWidget(),
  ));
}
