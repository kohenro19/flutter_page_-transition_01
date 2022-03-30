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
          height: 135,
          width: 500,
          color: Colors.redAccent,
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: AssetImage(
                          'assets/arm.jpg'
                        )
                      )
                    ),
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