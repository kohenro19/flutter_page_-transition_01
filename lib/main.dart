import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  // final parts = ['chest', 'arm', 'leg'];
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
      home: Scaffold(
        appBar: AppBar(
          title: Text("test tittle")
        ),
        body: GridView.count(
          crossAxisCount: 2,
          children: parts.map((e) {
            return ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: GridTile(
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, e["path"] as String);
                  },
                  child: Image(
                    image: NetworkImage('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg')
                  ),
                ),
              ),
            );
          }).toList(),
          // children: List.generate(10, (index) {
          //   return Center(
          //     child: TextButton(
          //       child: Text(
          //         'Item $index',
          //         style: Theme.of(context).textTheme.headline5,            
          //       ),
          //       onPressed: () {
          //         Navigator.pushNamed(context, '/next');
          //       },
          //     )
          //   );
          // }),
        ),
      ),
    );
  }
}
