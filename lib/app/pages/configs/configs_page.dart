import 'package:flutter/material.dart';
import 'package:meals/app/pages/components/drawer/drawer_widget.dart';
import 'package:meals/app/pages/configs/configs_controller.dart';

class ConfigsPage extends StatefulWidget {
  @override
  _ConfigsPageState createState() => _ConfigsPageState();
}

class _ConfigsPageState extends State<ConfigsPage> {
  @override
  Widget build(BuildContext context) {
    final configsController = ConfigsController.instance;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Configurações'),
        centerTitle: true,
      ),
      drawer: const DrawerWidget(),
      body: Column(
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
          Padding(
            padding: const EdgeInsets.all(12),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Sem Glúten',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                    ),
                    Text(
                      'Exibir somente refeições sem glúten',
                      style: TextStyle(color: Colors.black54),
                    ),
                  ],
                ),
                Switch(
                    value: configsController.hasNoGluten,
                    onChanged: (value) => configsController.changeConfigsViewModel.changeGluten(value))
              ],
            ),
          )
        ],
      ),
    );
  }
}
