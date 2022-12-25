
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constants.dart';
class NewCard extends StatelessWidget {
  String image;
  String myText;
  Function press;
  NewCard(this.image, this.myText, this.press);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                  offset: Offset(0, 17),
                  blurRadius: 17,
                  spreadRadius: -10,
                  color: kShadowColor)
            ],
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Material(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(20),
            child: InkWell(
              onTap: () {
                press();
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Align(
                          alignment: Alignment.center,
                          child: SvgPicture.asset(image)),
                      Text(
                        myText,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )
                    ]),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
