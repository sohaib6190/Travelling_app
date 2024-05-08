import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:motion_tab_bar/MotionBadgeWidget.dart';
import 'package:motion_tab_bar/MotionTabBar.dart';
import 'package:motion_tab_bar/MotionTabBarController.dart';
import 'package:my_proj/HomePage.dart';
import 'package:my_proj/widgets/HomePage1.dart';
import 'package:my_proj/widgets/Locations.dart';
import 'package:my_proj/widgets/Login.dart';
import 'package:my_proj/widgets/Transport.dart';
import 'package:my_proj/widgets/TravelLocation.dart';

class MyBottomNavBar extends StatefulWidget {
  const MyBottomNavBar({super.key});

  @override
  State<MyBottomNavBar> createState() => _MyBottomNavBarState();
}

class _MyBottomNavBarState extends State<MyBottomNavBar> with TickerProviderStateMixin {
  MotionTabBarController? _motionTabBarController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _motionTabBarController = MotionTabBarController(
      initialIndex: 1,
      length: 5,
      vsync: this,
    );
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _motionTabBarController!.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: MotionTabBar(
        controller: _motionTabBarController, // ADD THIS if you need to change your tab programmatically
        initialSelectedTab: "Favourites",

        labels: const ["Trip", "Favourites", "Booking", "Nearby" , "Account"],
        icons: const [Icons.trip_origin_rounded, Icons.favorite_border, FontAwesomeIcons.book, Icons.near_me,Icons.account_circle_outlined],

        // optional badges, length must be same with labels
        badges: [
          // Default Motion Badge Widget
          const MotionBadgeWidget(
            text: '10+',
            textColor: Colors.white, // optional, default to Colors.white
            color: Colors.red, // optional, default to Colors.red
            size: 18, // optional, default to 18
          ),
          const MotionBadgeWidget(
            text: '10+',
            textColor: Colors.white, // optional, default to Colors.white
            color: Colors.red, // optional, default to Colors.red
            size: 18, // optional, default to 18
          ),
          // custom badge Widget
          Container(
            color: Colors.black,
            padding: const EdgeInsets.all(2),
            child: const Text(
              '11',
              style: TextStyle(
                fontSize: 14,
                color: Colors.white,
              ),
            ),
          ),

          // allow null
          null,

          // Default Motion Badge Widget with indicator only
          const MotionBadgeWidget(
            isIndicator: true,
            color: Colors.blue, // optional, default to Colors.red
            size: 5, // optional, default to 5,
            show: true, // true / false
          ),
        ],
        tabSize: 50,
        tabBarHeight: 55,
        textStyle: const TextStyle(
          fontSize: 12,
          color: Colors.black,
          fontWeight: FontWeight.w500,
        ),
        tabIconColor: Colors.blue[600],
        tabIconSize: 28.0,
        tabIconSelectedSize: 26.0,
        tabSelectedColor: Colors.black,
        tabIconSelectedColor: Colors.white,
        tabBarColor: Colors.white,
        onTabItemSelected: (int value) {
          setState(() {
            // _tabController!.index = value;
            _motionTabBarController!.index = value;
          });
        },
      ),
      body: TabBarView(
      physics: NeverScrollableScrollPhysics(), // swipe navigation handling is not supported
      // controller: _tabController,
      controller: _motionTabBarController,
      children: <Widget>[
        HomePage(''),


          Location(),



        TicketFoldDemo(),
       TravelCardDemo(),


        ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/signup');
          },
          child: Text('Go to Signup'),
        ),

      ],
    ),
    );
  }
}
