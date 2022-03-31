import 'package:flutter/material.dart';


class Chest extends StatelessWidget {
  List<Color> colorList = [Colors.cyan, Colors.deepOrange, Colors.indigo];
  Chest({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Chest Workout"),
      ),
      body:ListView.builder(
        itemCount: 12,
        itemBuilder:  (BuildContext context, int index) {
          return Container(
            height: 80,
            color: colorList[index % colorList.length],
            child: Row(
              children: [
                Container(
                    color: Colors.black,
                    height: 50,
                    width: 80,                  
                )
              ],
            ),
          );
        },
      )    
    );
  }
}