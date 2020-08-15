import 'package:flutter/material.dart';

class FilterTileWidget extends StatelessWidget {
  final String title;
  final String description;
  final bool filterValue;
  final Function(bool value) changeValue;

  FilterTileWidget({
    @required this.title,
    @required this.description,
    @required this.filterValue,
    @required this.changeValue,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
              ),
              Text(
                description,
                style: TextStyle(color: Colors.black54),
              ),
            ],
          ),
          Switch(value: filterValue, onChanged: changeValue)
        ],
      ),
    );
  }
}
