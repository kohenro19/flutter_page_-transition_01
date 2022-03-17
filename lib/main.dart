import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

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
          crossAxisCount: 3,
          children: List.generate(10, (index) {
            return Center(
              child: TextButton(
                child: Text(
                  'Item $index',
                  style: Theme.of(context).textTheme.headline5,            
                ),
                onPressed: () {

                },
              )
            );
          }),
        ),
      ),
    );
  }
}