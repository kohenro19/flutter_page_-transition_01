import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
    final parts = [{"name": "chest", "path": "/chest", "image": 'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'},
                  //  {"name": "arm", "path": "/arm"},
                  //  {"name": "leg", "path": "/leg"},
                  
                  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'test',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Home()
    );
  }
}       
        
class Home extends StatelessWidget {
  const Home({ Key? key }) : super(key: key);
  myapp = new MyApp();
  parts = myapp.parts
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                        builder: (context) => Arm(),
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

class Arm extends StatelessWidget {
  const Arm({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(


      appBar: AppBar(
          title: Text("test tittle2"),
    )
    )
    );
  }
}