import 'package:cw6/models/kuwait.dart';
import 'package:cw6/screens/building_screen.dart';
import 'package:flutter/material.dart';
//import 'package:flutter_application_menu/models/kuwait.dart';
//import 'package:flutter_application_menu/screens/building_screen.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  var buildings = [
  Kuwait(
    name: 'أبراج الكويت',
    imageURL:
        'https://user-images.githubusercontent.com/24327781/188260105-52be6a2e-a6d3-4ceb-86c0-ddc83e0aa5b6.jpeg',
    description: "في مطعم ياباني قوي"
  ),
  Kuwait(
    name: 'برج التحرير',
    imageURL:
        'https://user-images.githubusercontent.com/24327781/188260123-28de85b4-d272-4ebb-b2ad-22a9582079bf.jpeg',
    description: "مادري شالفايده منه"
  ),
  Kuwait(
    name: 'المسجد الكبير',
    imageURL:
        'https://user-images.githubusercontent.com/24327781/188260137-021d865a-625e-4941-ad75-6427c690e0cf.jpeg',
    description: "الله اكبر"
  ),
];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menu'),
      ),
      body: ListView.builder(
        itemCount: buildings.length,
        itemBuilder: (context, index) {
          return Card(
            elevation: 6,
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => BuildingScreen(
                      building: buildings[index],
                    ),
                  ),
                );
              },
              child: Row(
                children: [
                  Image.network(
                    buildings[index].imageURL,
                    width: 100,
                    height: 100,
                  ),
                  Container(
                    padding: EdgeInsets.all(40),
                    child: Text(
                     buildings[index].name,
                      style: TextStyle(fontSize: 35),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}