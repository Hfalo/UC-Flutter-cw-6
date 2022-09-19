import 'package:flutter/material.dart';

import '../models/kuwait.dart';

class BuildingScreen extends StatelessWidget {
  const BuildingScreen({Key? key, required this.building}) : super(key: key);

  final Kuwait building;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(building.name),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Image.network(building.imageURL,
            width: 100,
            height: 100,
            ),
            
          ),
          Text(building.name
          ),
          Text(building.description),
        ],
      ),
    );
  }
}