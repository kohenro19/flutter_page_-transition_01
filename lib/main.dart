import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  // final parts = ['chest', 'arm', 'leg'];
    final parts = [{"name": "chest", "path": "/chest"},
                   {"name": "arm", "path": "/arm"},
                   {"name": "leg", "path": "/leg"},];

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
            return Center(
              child: TextButton(
                child: Text(
                e["name"] as String
              ),
                onPressed: () {
                  Navigator.pushNamed(context, e["path"] as String);
                },
              )
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

