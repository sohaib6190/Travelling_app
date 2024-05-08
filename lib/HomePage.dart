import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_proj/BottomNavigationBar.dart';
import 'package:my_proj/widgets/CustomTextField.dart';
import 'package:my_proj/widgets/HomePage1.dart';
import 'package:my_proj/widgets/ListCards.dart';


class HomePage extends StatelessWidget {
  var namefromsignup;
  HomePage(this.namefromsignup);


  @override
  Widget build(BuildContext context) {

    return Scaffold(

    body:SingleChildScrollView(

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text('Welcome,$namefromsignup',style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                  fontFamily: 'FontMain1',
                  fontWeight: FontWeight.w600
      
                ),),
              ),
      
              SizedBox(
                width: 10,
              ),
              FaIcon(FontAwesomeIcons.locationPin,color: Colors.black87,),
      
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text('Explore Pakistan',style: TextStyle(
                  fontSize: 15,
                  color: Colors.black54,
                  fontFamily: 'FontMain1',

                ),),
              ),
      
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Center(
            child: Container(
              width: MediaQuery.sizeOf(context).width*0.9,
            decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
                color: Colors.grey[200],
              // Background color of the text field
                ),
                child:TextField(
      
                  //controller: controller,
                  style: TextStyle(fontSize: 20,color: Colors.white),
                  decoration: InputDecoration(
      
              suffixStyle: TextStyle(fontSize: 30),
              contentPadding: EdgeInsets.all(3),
              enabledBorder: OutlineInputBorder(
                borderSide:
                BorderSide( color: Colors.grey),
                borderRadius: BorderRadius.circular(15.0),
              ),
              labelText: 'Search Your Hotel,Resturant,Spot',
              hintText: 'Search',
              filled: true,
              fillColor: Color(0xff757575),
      
              labelStyle: TextStyle(fontSize: 10,fontFamily: 'FontMain1',color: Colors.white60)
                  ),
                ),
            ),
          ),
      
          SizedBox(
            height: 25,
          ),
      
      
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              children: [
                Text('Top Places',style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                  fontFamily: 'FontMain1',
      
                ),),
              ],
            ),
          ),


          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage1(),),
              );
            },
            child: ListCards(
              imagePaths: [
                'assets/images/balochistan.jpg',
                'assets/images/hunza.jpg',
                'assets/images/Attabad.jpg',
                'assets/images/Skardu.jpg',
              ],
            ),
          ),
      
      
      
      
      
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              children: [
                Text('Hotels',style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                  fontFamily: 'FontMain1',
      
                ),),
              ],
            ),
          ),

          ListCards(
            imagePaths: [
              'assets/images/Attabad.jpg',
              'assets/images/Skardu.jpg',
              'assets/images/kashmir.jpg',
              'assets/images/hunza.jpg',
            ],
          ),
      
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              children: [
                Text('Activities',style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                  fontFamily: 'FontMain1',
      
                ),),
              ],
            ),
          ),

          ListCards(
            imagePaths: [
              'assets/images/kashmir.jpg',
              'assets/images/Skardu.jpg',
              'assets/images/Skardu.jpg',
              'assets/images/Skardu.jpg',
            ],
          ),
      
      
        ],
      ),
    )
    );
  }
}
