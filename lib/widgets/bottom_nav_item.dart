import 'package:exercise_ui/const.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class BottomNavItem extends StatelessWidget {
  String svgAsset;
  Function press; 
  String title;
  bool isActive;
   BottomNavItem({ Key key ,
   this.svgAsset,
   this.title,
    this.press,
    this.isActive=false
   }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child:Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SvgPicture.asset(svgAsset),
          Text(title,style: TextStyle(color:isActive==true? kActiveIconColor :kTextColor),)
        ],
      )
    );
  }
}