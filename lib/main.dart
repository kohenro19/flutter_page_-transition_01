import 'package:flutter/material.dart';
import 'arm.dart';
import 'chest.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'test',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: Home(),
    );
  }
}


class Home extends StatelessWidget {
  Home({ Key? key }) : super(key: key);

  final parts = [
                  {"name": "chest", "path": Arm(), "image": 'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'},
                  {"name": "arm", "path": Chest(), "image": 'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg'},
                  // {"name": "leg", "path": "/leg", "image": 'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'},
                ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        ),
        body: GridView.count(
          crossAxisCount: 2,
          children: parts.map((e) {
            return ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: GridTile(
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(context, 
                      MaterialPageRoute(
                        builder: (context) => e["path"] as Widget
                      )
                    );
                  },
                  child: Image(
                    image: NetworkImage(e["image"] as String)
                  ),
                ),
              ),
            );
          }).toList(),
        ),
      );
  }
}