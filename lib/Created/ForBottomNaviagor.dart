import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ui_/constants.dart';
class ForBottomNaviagor extends StatelessWidget {
final String icons;
final String subTitle;
bool isPress=false;
Function onTab;
ForBottomNaviagor(this.icons,this.subTitle,this.onTab,[this.isPress=false]);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTab(
  
      ),
      child: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 15,vertical: 15),
        child: Column(
          children: [
            SvgPicture.asset(icons,color: isPress ?kActiveIconColor:kTextColor),
            Text(subTitle,style: TextStyle(color: isPress ? kActiveIconColor:kTextColor),),
          ],
        ),
      ),
    );
  }
}
