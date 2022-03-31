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
        // decoration: BoxDecoration(
        //   gradient: LinearGradient(
        //     colors: [
        //       // 
        //     ]
        //   )
        // ),
        child: Container(
          height: 105,
          width: 500,
          color: Colors.redAccent,
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    color: Colors.cyan,
                    height: 50,
                    width: 80,
                  ),
                   Container(
                    color: Colors.deepPurple,
                    height: 50,
                    width: 200,
                  )                 
                ],
              )
            ],

          ),
          
        ),
      ),
    

    );
  }
}