import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:my_proj/HomePage.dart';

import 'Signup.dart';

class Location extends StatefulWidget {

  @override
  State<Location> createState() => _LocationState();

}

class _LocationState extends State<Location> {
  late LiquidController _liquidController;

 @override
  void initState() {

   _liquidController = LiquidController();

    super.initState();

  }
  List <Widget> pages = [
    Container(
      width: double.infinity,
      height:double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/balochistan.jpg'),
          fit: BoxFit.fill,
        ),

      ),
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          Text('Balochistan',style:TextStyle(fontSize: 40,color: Colors.black54,fontFamily: 'FontMain1'),),
          SizedBox(
            height: 20,
          ),
          Text('The city of Beaches',style:TextStyle(fontSize: 20,color: Color(0xffd89c74),fontFamily: 'FontMain'),),
          SizedBox(
            height: 10,
          ),

        ],
      ),
    ),


    Container(
      width: double.infinity,
      height:double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/Attabad.jpg'),
          fit: BoxFit.fill,
        ),

      ),
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          Text('Attabad',style:TextStyle(fontSize: 40,color: Colors.black54,fontFamily: 'FontMain1'),),
          SizedBox(
            height: 20,
          ),
          Text('The city of Mountains',style:TextStyle(fontSize: 20,color: Color(0xffd89c74),fontFamily: 'FontMain'),),
        ],
      ),
    ),

    Container(
      width: double.infinity,
      height:double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/Skardu.jpg'),
          fit: BoxFit.fill,
        ),

      ),
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          Text('Skardu',style:TextStyle(fontSize: 40,color: Colors.black,fontFamily: 'FontMain1'),),
          SizedBox(
            height: 20,
          ),
          Text('The city of Mountains',style:TextStyle(fontSize: 20,color: Color(0xffd89c74),fontFamily: 'FontMain'),),
        ],
      ),
    ),

    Container(
      width: double.infinity,
      height:double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/Skardu.jpg'),
          fit: BoxFit.fill,
        ),

      ),
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          Text('Hunza',style:TextStyle(fontSize: 40,color: Colors.black,fontFamily: 'FontMain1'),),
          SizedBox(
            height: 20,
          ),
          Text('The city of Mountains',style:TextStyle(fontSize: 20,color: Color(0xffd89c74),fontFamily: 'FontMain'),),
        ],
      ),
    ),

    Container(
      width: double.infinity,
      height:double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/kashmir.jpg'),
          fit: BoxFit.fill,
        ),

      ),
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          Text('Kashmir',style:TextStyle(fontSize: 40,color: Colors.black,fontFamily: 'FontMain1'),),
          SizedBox(
            height: 20,
          ),
          Text('The haert of Pakistan',style:TextStyle(fontSize: 20,color: Color(0xffd89c74),fontFamily: 'FontMain'),),
        ],
      ),
    ),


  ];

  @override
  Widget build(BuildContext context) {
  return Scaffold(
    backgroundColor: Color(0xff1C1C2D),
    // appBar: AppBar(
    //   backgroundColor: Colors.white,
    //   toolbarHeight: 30,
    // ),
    body:LiquidSwipe(
      pages: pages,
      liquidController: _liquidController,
      fullTransitionValue: 300,
      waveType: WaveType.liquidReveal,
      enableLoop: true,
      slideIconWidget: Padding(
        padding: const EdgeInsets.all(8.0),
        child: InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage(''),),);
          },
          child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.black,
            ),
            child: Icon(
              Icons.arrow_right,
              color: Colors.white,
              size: 40,
            ),
          ),
        ),
      ),
    ),
  );
  }
}
