import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ui_/constants.dart';

import 'Created/ForBottomNaviagor.dart';
import 'Created/NewCard.dart';
import 'Created/serach.dart';
import 'DetailScreen/DetailScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          fontFamily: "Cairo",
          scaffoldBackgroundColor: kBackgroundColor,
          primarySwatch: Colors.blue,
          textTheme:
              Theme.of(context).textTheme.apply(displayColor: kTextColor)),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // Burada boyutların düzeni için işlem yapılıyor
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: Container(
        height: 80,
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ForBottomNaviagor("assets/icons/calendar.svg", "Bugün", () {}),
            ForBottomNaviagor(
                "assets/icons/gym.svg", "Egzersizler", () {}, true),
            ForBottomNaviagor("assets/icons/Settings.svg", "Ayarlar", () {}),
          ],
        ),
      ),
      body: Stack(
        children: [
          Container(
            height: size.height * 0.45,
            decoration: BoxDecoration(
              color: Color(0xFFF5CEB8),
              image: DecorationImage(
                  image: AssetImage("assets/images/undraw_pilates_gpdb.png"),
                  alignment: Alignment.centerLeft),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      alignment: Alignment.center,
                      height: 52,
                      width: 52,
                      decoration: BoxDecoration(
                          color: Color(0xFFF2BEA1), shape: BoxShape.circle),
                      child: SvgPicture.asset("assets/icons/menu.svg"),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text("Günaydın bu gün nasılsın",
                            style: TextStyle(
                                fontWeight: FontWeight.w900, fontSize: 20))),
                  ),
                  SearchIcon(),
                  Expanded(
                    child: GridView.count(
                      crossAxisCount: 2,
                      mainAxisSpacing: 20,
                      crossAxisSpacing: 20,
                      children: [
                        NewCard("assets/icons/Hamburger.svg", "Yaygın Diyetler",
                            () {}),
                        NewCard("assets/icons/Excrecises.svg", "Ergzersizler",
                            () {}),
                        NewCard("assets/icons/Meditation.svg", "Meditasyonlar",
                            () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => DetailsScreen()));
                        }),
                        NewCard("assets/icons/yoga.svg", "Yoga", () {}),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
