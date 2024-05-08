import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_proj/BottomNavigationBar.dart';
import 'package:my_proj/HomePage.dart';
import 'package:my_proj/widgets/Login.dart';
import 'CustomButotn.dart';
import 'CustomTextField.dart';
class Signup extends StatelessWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //MediaQueryData mediaQueryData = MediaQuery.of(context);
   // double screenWidth = mediaQueryData.size.width;
    //double screenHeight = mediaQueryData.size.height;
    var namecontroller = TextEditingController();
    return Scaffold(
      backgroundColor: Color(0xff1C1C2D),
      appBar: AppBar(
        backgroundColor: Colors.white,
        toolbarHeight: 20,

      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 50,
          ),
          
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text('Create Account',style: TextStyle(fontSize: 20,color: Colors.white,fontFamily: 'FontMain1')

            ),
          ),

          SizedBox(
            height: 20,
          ),


          CustomTextField(lname: 'Enter Your Name', hname: 'Name', bgcolor: Color(0Xff1F1F33),
          controller: namecontroller,
          ),

          SizedBox(
            height: 20,
          ),

          CustomTextField(lname: 'Enter Your Email', hname: 'Email', bgcolor: Color(0Xff1F1F33),),


          SizedBox(
            height: 20,
          ),

          CustomTextField(lname: 'Enter Your Password', hname: 'Password', bgcolor: Color(0Xff1F1F33),),


          SizedBox(
            height: 20,
          ),

          CustomTextField(lname: 'Re Enter Your Password', hname: 'Password', bgcolor: Color(0Xff1F1F33),),

          SizedBox(
            height: 30,
          ),


          Center(
            child: SizedBox(
                width: MediaQuery.sizeOf(context).width*0.9,
                height: 50,
                child: CustomRoundButton(btname: 'Sign Up', btcolor: Color(0xff613896),onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => MyBottomNavBar(),));

                },)),
          ),

          SizedBox(
            height: 30,
          ),

          Center(child: Text('Or Continue With',style: TextStyle(fontSize: 20,color: Colors.white),)),


          SizedBox(
            height: 20,
          ),


          Row(
            //crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,

            children: [

              CircleAvatar(
                backgroundColor: Color(0xff4B4B61) ,
                radius: 50,
                child: FaIcon(FontAwesomeIcons.google,size: 30,color: Colors.red,),
              ),
              CircleAvatar(
                backgroundColor: Color(0xff4B4B61) ,
                radius: 50,
                child: FaIcon(FontAwesomeIcons.facebook,size: 30,color: Colors.blue  ,),
              ),
              CircleAvatar(
                backgroundColor: Color(0xff4B4B61) ,
                radius: 50,
                child: FaIcon(FontAwesomeIcons.apple,size: 30,color: Colors.white,),
              ),


            ],
          ),


          SizedBox(
            height: 30,
          ),


          Center(child:

          InkWell(
              onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Login(),),);
              },

              child: Text('Already have an account? Login',style: TextStyle(fontSize: 20,color: Colors.white,fontFamily: 'FontMain1'),)))



        ]

      )

    );
  }
}
