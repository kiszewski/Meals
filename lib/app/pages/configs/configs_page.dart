import 'package:flutter/material.dart';
import 'package:meals/app/pages/components/drawer/drawer_widget.dart';
import 'package:meals/app/pages/configs/components/filter_tile_widget.dart';
import 'package:meals/app/viewmodels/change_configs_viewmodel.dart';
import 'package:provider/provider.dart';

class ConfigsPage extends StatefulWidget {
  @override
  _ConfigsPageState createState() => _ConfigsPageState();
}

class _ConfigsPageState extends State<ConfigsPage> {
  @override
  Widget build(BuildContext context) {
    final configs = Provider.of<ChangeConfigsViewModel>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Configurações'),
        centerTitle: true,
      ),
      drawer: const DrawerWidget(),
      body: SingleChildScrollView(
              child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Text(
                    'Filtros',
                    style: TextStyle(fontSize: 25),
                  ),
                )
              ],
            ),
            FilterTileWidget(
              title: "Sem glúten",
              description: "Exibir somente refeições livres de glúten.",
              filterValue: configs.noGluten,
              changeValue: configs.changeGluten,
            ),
            FilterTileWidget(
              title: "Sem Lactose",
              description: "Exibir somente refeições livres de lactose.",
              filterValue: configs.noLactose,
              changeValue: configs.changeLactose,
            ),
            FilterTileWidget(
              title: "Vegana",
              description: "Exibir somente refeições veganas.",
              filterValue: configs.onlyVegan,
              changeValue: configs.changeVegan,
            ),
            FilterTileWidget(
              title: "Vegetariana",
              description: "Exibir somente refeições vegetarianas.",
              filterValue: configs.onlyVegetarian,
              changeValue: configs.changeVegetarian,
            ),
          ],
        ),
      ),
    );
  }
}
