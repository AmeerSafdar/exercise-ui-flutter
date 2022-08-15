import 'package:exercise_ui/const.dart';
import 'package:exercise_ui/widgets/bottom_nav_item.dart';
import 'package:exercise_ui/widgets/categories.dart';
import 'package:exercise_ui/widgets/search_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Exercise ui',
      theme: ThemeData(
        fontFamily: 'Cairo',
        scaffoldBackgroundColor: kBackgroundColor,
        textTheme: Theme.of(context).textTheme.apply(displayColor: kTextColor),
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({ Key key }) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
        height: 80,
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            BottomNavItem(
              svgAsset: "assets/icons/calendar.svg",
              title: "Today",
            ),
            BottomNavItem(
              svgAsset: "assets/icons/gym.svg",
              title: "Gym",
              isActive: true,
            ),
            BottomNavItem(
              svgAsset: "assets/icons/Settings.svg",
              title: "Setting",
            )
          ],

        ),
      ),

      body: Stack(
        children: [
          Container(
            height:size.height*0.45,
            decoration: BoxDecoration(
              color: Color(0xfff5ceb8),
              image: DecorationImage(
                // alignment: alignm,
                image: AssetImage("assets/images/undraw_pilates_gpdb.png"))
            ),
          ),

          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal :20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      alignment: Alignment.center,
                      height: 52,
                      width: 52,
                      decoration: BoxDecoration(
                        color: Color(0xff2bea1),
                        shape: BoxShape.circle
                      ),
                      child: SvgPicture.asset("assets/icons/menu.svg",height: 15,width: 25,),
                    ),
                  ),

                  Text("Good Morning \nSafdar",
                  style: Theme.of(context).textTheme.display1.copyWith(fontWeight: FontWeight.bold )
                  ),

                  SearchBar(),

                  Expanded(
                    child: GridView.count(
                      crossAxisCount: 2,
                      childAspectRatio: .85,
                      mainAxisSpacing: 15,
                      crossAxisSpacing: 15,
                      children: [
                        CategoriesCard(
                          imgUrl: "assets/icons/Hamburger.svg",
                          txt: "Diet Recommendation",
                          press: (){},
                        ),
                        CategoriesCard(
                          imgUrl: "assets/icons/Excrecises.svg",
                          txt: "Kegel Exercise",
                          press: (){},
                        ),
                        CategoriesCard(
                          imgUrl: "assets/icons/Meditation.svg",
                          txt: "Meditation",
                          press: (){},
                        ),
                         CategoriesCard(
                          imgUrl: "assets/icons/yoga.svg",
                          txt: "Yoga",
                          press: (){},
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
