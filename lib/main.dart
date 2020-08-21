import 'package:flutter/material.dart';
import 'package:meals/app/services/shared_local_storage_service.dart';
import 'package:meals/app/viewmodels/change_configs_viewmodel.dart';
import 'package:provider/provider.dart';

import 'app/app_widget.dart';
import 'app/viewmodels/toogle_favorites_viewmodel.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(
        create: (context) => ToogleFavoritesViewModel(SharedLocalStorageService()),
      ),
      ChangeNotifierProvider(
        create: (context) => ChangeConfigsViewModel(SharedLocalStorageService()),
      ),

    ],
    child: AppWidget(),
  ));
}
