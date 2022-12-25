import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ui_/Created/wrap.dart';
import 'package:ui_/constants.dart';

import '../Created/ForBottomNaviagor.dart';
import '../Created/gridViewBuilder.dart';
import '../Created/serach.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: size.height * 0.45,
            decoration: BoxDecoration(
                color: kBlueLightColor,
                image: DecorationImage(
                    image: AssetImage("assets/images/meditation_bg.png"),
                    fit: BoxFit.fill)),
          ),
          SafeArea(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Column(
                children: [
                  SizedBox(
                    height: size.height * 0.05,
                  ),
                  Text(
                    "Meditasyon",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Kurs süresi 3-10 Dakika",
                      style: TextStyle(),
                    ),
                  ),
                  SizedBox(
                    height: size.height * .06,
                    child: Text(
                      "Daha Sağlıklı bir gün için yola koyulun",
                      style: TextStyle(),
                    ),
                  ),
                  SizedBox(width: size.width * 0.60, child: SearchIcon()),
                  GridViewBuilder(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ForBottomNaviagor(
                          "assets/icons/calendar.svg", "Bugün", () {}),
                      ForBottomNaviagor(
                          "assets/icons/gym.svg", "Egzersizler", () {}, true),
                      ForBottomNaviagor(
                          "assets/icons/Settings.svg", "Ayarlar", () {}),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
