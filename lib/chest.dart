import 'package:flutter/material.dart';


class Chest extends StatelessWidget {
  const Chest({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Chest Workout"),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              // 
            ]
          )
        ),
        child: Column(),
      ),
    

    );
  }
}