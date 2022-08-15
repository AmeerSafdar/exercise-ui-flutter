import 'package:exercise_ui/const.dart';
import 'package:exercise_ui/screens/detail_screen/detail_sc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
// ignore: must_be_immutable
class CategoriesCard extends StatelessWidget {
  String imgUrl;
  String txt;
  Function press;
   CategoriesCard({
    Key key,
    this.imgUrl,
    this.txt,
    this.press
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      
      borderRadius: BorderRadius.circular(13),
      child: Container(
        // padding: EdgeInsets.all(20),
        decoration:BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(13),
          boxShadow: [
            BoxShadow(
           offset: Offset(0,1),
           color: kShadowColor,
           blurRadius: 7,
           spreadRadius: 1
          )]
        ),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: (){
              Navigator.push(context,MaterialPageRoute(builder: (context)=>DetailedScreen()));
            },
            child: Padding(
              // padding: const EdgeInsets.all(15.0),
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  Spacer(),
                  SvgPicture.asset(imgUrl),
                  Spacer(),
                  Text(txt,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.title.copyWith(fontSize: 15),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}