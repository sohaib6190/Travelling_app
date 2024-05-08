import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_proj/BottomNavigationBar.dart';
import 'package:my_proj/widgets/CarusolSlider.dart';
import 'package:my_proj/widgets/CustomTextField.dart';

class HomePage1 extends StatelessWidget {

  final List<Map<String, String>> travelDetails = [
  {
  'name': 'Skardu',
  'info': '150/day',
  'imgpath': 'assets/images/Skardu.jpg',
},

  ];

  @override
  Widget build(BuildContext context) {


    return Scaffold(
     // bottomNavigationBar: MyBottomNavBar(),
      body:SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: 250,
                  decoration: BoxDecoration(
        
                    image: DecorationImage(
                      image: AssetImage('assets/images/Balochistan.jpg'),
                      fit: BoxFit.fill,
        
                    ),
                    borderRadius: BorderRadius.only(bottomRight:Radius.circular(30),bottomLeft:Radius.circular(30) ),
                  ),
        
                ),
                Container(
                  height: 250,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(bottomRight:Radius.circular(30),bottomLeft:Radius.circular(30) ),
                      gradient: LinearGradient(
                          begin: Alignment.bottomCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Colors.black38,
                            Colors.black38,
        
                          ],
                          stops: [
                            0.0,
                            -1.0,
        
                          ]
                      )
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 120,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20,bottom: 10),
                      child: Text('Balochistan',style:TextStyle(fontSize: 20,color: Colors.white70,fontFamily: 'FontMain1',),),
                    ),
        
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Row(
                        children: [
                          FaIcon(FontAwesomeIcons.locationPin,size: 15,color: Colors.white,),
                          SizedBox(
                            width: 4,
                          ),
                          Text('Pakistan',style:TextStyle(fontSize: 20,color: Colors.white70,fontFamily: 'FontMain1',),),
                        ],
                      ),
                    ),
        
                    SizedBox(
                      height: 40,
                    ),
        
                    CustomTextField(lname: 'Search Your Favourite Place here', hname: 'Search', bgcolor: Color(0xffF1F1F1)),
                  ],
                ),
        
        
              ],
            ),
        
        
            SizedBox(
              height: 30,
            ),
        
            Container(
              width: 330,
              height: 60,
        
        
              color: Colors.grey,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text('103',style: TextStyle(color: Colors.red,fontWeight: FontWeight.w800,fontFamily: 'FontMain2',fontSize: 20),),
        
                  Text('Reviews',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600,fontFamily: 'FontMain2',fontSize: 20),),
        
                  FaIcon(FontAwesomeIcons.solidStar,size: 20,color: Colors.yellow,),
                  Text('4.0',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600,fontFamily: 'FontMain2',fontSize: 20),),
        
                  FaIcon(FontAwesomeIcons.temperatureQuarter,size: 20,color: Colors.yellow,),
        
                  Text('19°C',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontFamily: 'FontMain2',fontSize: 20),),
                ],
              ),
        
            ),
        
        
            SizedBox(
              height: 10,
            ),
        
        
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text('Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took typesetting,'
                  ' remaining essentially unchanged',
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.black38,
                  wordSpacing: 2,
        
        
                ),
        
        
              ),
            ),
        
        
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text('Where to stay',style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600,
                color: Colors.black,
                fontFamily: 'FontMain1',

              ),),
            ),
          ),
          CarusolSlider(travelDetails),
        
        
            SizedBox(
              height: 30,
            ),

            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text('Where to go',style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                  fontFamily: 'FontMain1',

                ),),
              ),
            ),
        
            CarusolSlider(travelDetails),
        
          ],
        
        ),
      ) ,
    );
  }
}
