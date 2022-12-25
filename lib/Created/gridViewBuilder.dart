import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:ui_/constants.dart';
import 'package:ui_/playmedition.dart';




class GridViewBuilder extends StatelessWidget {
  const GridViewBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List<Contents> myList = [
      Contents(1),
      Contents(2),
      Contents(3),
      Contents(4),
      Contents(5),
      Contents(6),
    ];
    return Expanded(
      child: GridView.builder(
        itemCount: myList.length,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: (){},
            child: Container(
              margin: EdgeInsets.all(16),
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(offset: Offset(0,17 ),
                blurRadius: 30,
                spreadRadius: -7
                ,color: kShadowColor
            )
              ],
              borderRadius: BorderRadius.circular(23),  
            color: kBackgroundColor),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
              Container(
                width: 42,
                height: 43,
                child: Icon(Icons.play_arrow,color: Colors.white,),
                decoration: BoxDecoration(color: kblueColor,
                shape: BoxShape.circle),
              ),
              SizedBox(width: 5,),
              Text(myList[index].name+" ${myList[index].index}"),
            ]),
              ),
          );
        },
      ),
    );
  }
}
