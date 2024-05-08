
import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart'; // Import SystemChrome
import 'package:flutter_animate/flutter_animate.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_proj/BottomNavigationBar.dart';
import 'package:my_proj/widgets/CarusolSlider.dart';
import 'package:my_proj/widgets/HomePage1.dart';

import 'package:my_proj/widgets/Locations.dart';
import 'package:my_proj/widgets/Transport.dart';
import 'package:my_proj/widgets/TravelLocation.dart';

import 'package:my_proj/widgets/ListCards.dart';
import 'package:my_proj/widgets/Login.dart';

import 'package:my_proj/widgets/NavBar.dart';

import 'package:my_proj/widgets/OTP1.dart';

import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:my_proj/widgets/Signup.dart';

import 'HomePage.dart';
import 'package:shared/env.dart';

import 'Splash Screen.dart';

void main() async {
  // Set preferred orientations before running the app
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitDown,
    DeviceOrientation.portraitUp,
  ]);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  static String _pkg = "my_proj";
  static String? get pkg => Env.getPackage(_pkg);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Travelling App',
      debugShowCheckedModeBanner: false,
      // theme: ThemeData(
      //   fontFamily: 'FontMain2',
      //   primarySwatch: Colors.blue,
      //   textTheme: const TextTheme(),
      //   useMaterial3: true,
      // ),
      home://TravelCardDemo()
      //MyBottomNavBar(),
     // HomePage1(),
      //CarusolSlider(),
        //TicketFoldDemo(),
     // HomePage(''),
      Signup(),
      //
    );
  }
}



class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body:AnimatedSplashScreen(
          duration: 3000,
          splash: Icons.home,
          nextScreen: Signup(),
          splashTransition: SplashTransition.fadeTransition,
          pageTransitionType: PageTransitionType.scale,
          backgroundColor: Colors.blue)
    );

  }
}
