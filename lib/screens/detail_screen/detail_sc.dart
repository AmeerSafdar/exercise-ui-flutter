import 'package:exercise_ui/const.dart';
import 'package:exercise_ui/widgets/bottom_nav_item.dart';
import 'package:exercise_ui/widgets/search_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DetailedScreen extends StatefulWidget {
  const DetailedScreen({ Key key }) : super(key: key);

  @override
  _DetailedScreenState createState() => _DetailedScreenState();
}

class _DetailedScreenState extends State<DetailedScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      // bottomNavigationBar: BottomNavItem(),
      body: Stack(
        children: [
          Hero(
            tag:AssetImage("assets/images/meditation_bg.png") ,
            child: Container(
              height: size.height*0.45,
              decoration: BoxDecoration(
                color: kBlueLightColor,
                image: DecorationImage(image:AssetImage("assets/images/meditation_bg.png"),
                fit: BoxFit.fitWidth
                )
                           ),
            ),
          ),

          SafeArea(
            child: Padding(
              padding:EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: size.height*0.05,
                  ),
                  Text("Meditation",
                  style:Theme.of(context).textTheme.display1.copyWith(fontWeight: FontWeight.w900)
                  ),
                  SizedBox(height: 10,),
                  Text("3-10 MIN course",style: TextStyle(fontWeight: FontWeight.bold),),
                  SizedBox(height: 10,),

                  SizedBox(width: size.width*0.6,
                    child: Text("Live happier and healthier by learning the fundamental of meditation"),
                  ),

                  SizedBox(
                    width: 0.5*size.width,
                    child: SearchBar()),
                    Wrap(
                      spacing: 15,
                      runSpacing: 20,
                      children: [
                        SessionCard(
                          sessionNumber: 01,
                          isDone: true,
                        ),
                         SessionCard(
                          sessionNumber: 02,
                        ),
                        SessionCard(
                          sessionNumber: 03,
                        ),
                         SessionCard(
                          sessionNumber: 4,
                        ),

                          SessionCard(
                          sessionNumber: 5,
                        ),
                        SessionCard(
                          sessionNumber: 6,
                        ),
                         
                      ],
                    ),
                    SizedBox(height: 20,),

                    Container(
                      child: Text(
                        "Meditation",
                        style: Theme.of(context).textTheme.title.copyWith(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      height: 90,
                      margin: EdgeInsets.symmetric(vertical :20),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(0,1),
                            spreadRadius: 1,
                            blurRadius: 1,
                            color: kShadowColor
                          )
                        ]
                      ),
                      child: Row(
                        children: [
                          SvgPicture.asset("assets/icons/Meditation_women_small.svg"),
                          SizedBox(width: 20,),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text("Basic 2",
                                style: Theme.of(context).textTheme.subtitle,
                                ),
                                Text("Start your deepen you practice")
                              ],
                            ),
                          ),

                          Padding(
                            padding: EdgeInsets.all(20),
                            child: SvgPicture.asset("assets/icons/Lock.svg"),
                            )
                        ],
                      ),
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

class SessionCard extends StatelessWidget {
  String sessiontxt;
  int sessionNumber;
  bool isDone;
   SessionCard({
    Key key,
    this.sessiontxt,
    this.sessionNumber,
    this.isDone=false
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(  builder: (context, Constraints) {
        return Container(
          width: Constraints.maxWidth/2-10,

          // padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
                BoxShadow(
                  offset: Offset(0,15),
                  spreadRadius: -13,
                  blurRadius: 3,
                  color: kShadowColor
                )
            ]
          ),
          child: Material(
            child: InkWell(
              onTap: (){},
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    Container(
                      height: 42,
                      width: 43,
                      decoration: BoxDecoration(
                        color:isDone? kBlueColor:Colors.white,
                        shape: BoxShape.circle,
                        border: Border.all(color: kBlueColor)
                      ),
                      child: Icon(
                        Icons.play_arrow,color:isDone? Colors.white:kBlueColor,
                      ),
                    ),
                    SizedBox(width: 10,),
                    Text("session $sessionNumber",
                    style: Theme.of(context).textTheme.subtitle,
                    )
                  ],
                ),
              ),
            ),
          ),
        );
      }
    );
  }
}