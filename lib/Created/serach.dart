import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SearchIcon extends StatelessWidget {
  const SearchIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 30),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(29.5), color: Colors.white),
      child: TextField(
        decoration: InputDecoration(
            hintText: "Ara",
            icon: SvgPicture.asset("assets/icons/search.svg"),
            border: InputBorder.none),
      ),
    );
  }
}
