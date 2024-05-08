// import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:my_proj/widgets/Signup.dart';
//
// import '../HomePage.dart';
// import 'CustomButotn.dart';
// import 'CustomTextField.dart';
//
// class Login extends StatefulWidget {
//
//
//
//   @override
//   State<Login> createState() => _LoginState();
//   //final myController = TextEditingController();
//   // void dispose() {
//   //   // Clean up the controller
//   //   // when the widget is disposed.
//   //   myController.dispose();
//   //   super.dispose();
//   // }
// }
//
// class _LoginState extends State<Login> {
//   @override
//   Widget build(BuildContext context) {
//     final myController = TextEditingController();
//     return Scaffold(
//         backgroundColor: Color(0xff1C1C2D),
//     appBar: AppBar(
//     backgroundColor: Colors.white,
//     toolbarHeight: 150,
//     ),
//
//       body: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           SizedBox(
//             height: 200,
//           ),
//
//           Padding(
//             padding: const EdgeInsets.only(left: 120),
//             child: Text('Welcome!!',style: TextStyle(fontSize: 20,color: Colors.white,fontFamily: 'FontMain1')
//
//             ),
//           ),
//
//           SizedBox(
//             height: 40,
//           ),
//
//
//           CustomTextField(lname: 'Enter Your Name', hname: 'Name', bgcolor: Color(0Xff1F1F33),
//               controller: myController,
//               ),
//
//           SizedBox(
//             height: 150,
//           ),
//
//           CustomTextField(lname: 'Enter Your Password', hname: 'Password', bgcolor: Color(0Xff1F1F33),),
//
//           SizedBox(
//             height: 100,
//           ),
//
//
//           Padding(
//             padding: const EdgeInsets.only(left: 120),
//             child: Text('Forgot Password?',style: TextStyle(fontSize: 60,color: Colors.white,fontWeight: FontWeight.w100),),
//           ),
//
//           SizedBox(
//             height: 200,
//           ),
//
//           Center(
//             child: SizedBox(
//                 width: MediaQuery.sizeOf(context).width*0.87,
//                 height: 200,
//                 child: CustomRoundButton(btname: 'Login Up', btcolor: Color(0xff613896),onPressed: (){
//                   Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage(
//                       //myController.text.toString()
//                   ),),);
//
//                 },)),
//           ),
//
//
//           SizedBox(
//             height: 200,
//           ),
//
//
//           Center(child: Text('Or Continue With',style: TextStyle(fontSize: 60,color: Colors.white,fontWeight: FontWeight.w400),)),
//
//
//           SizedBox(
//             height: 200,
//           ),
//
//
//           Row(
//             //crossAxisAlignment: CrossAxisAlignment.center,
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//
//             children: [
//
//               CircleAvatar(
//                 backgroundColor: Color(0xff4B4B61) ,
//                 radius: 180,
//                 child: FaIcon(FontAwesomeIcons.google,size: 150,color: Colors.red,),
//               ),
//               CircleAvatar(
//                 backgroundColor: Color(0xff4B4B61) ,
//                 radius: 180,
//                 child: FaIcon(FontAwesomeIcons.facebook,size: 150,color: Colors.blue  ,),
//               ),
//               CircleAvatar(
//                 backgroundColor: Color(0xff4B4B61) ,
//                 radius: 180,
//                 child: FaIcon(FontAwesomeIcons.apple,size: 150,color: Colors.white,),
//               ),
//
//
//             ],
//           ),
//
//
//           SizedBox(
//             height: 200,
//           ),
//
//
//           Center(child:
//
//           InkWell(
//               onTap: (){
//                 Navigator.push(context, MaterialPageRoute(builder: (context) => Signup(),),);
//               },
//
//               child: Text('Dont have an account? Signin',style: TextStyle(fontSize: 70,color: Colors.white,fontFamily: 'FontMain1'),)))
//
//
//
//
//
//         ],
//       ),
//     );
//   }
// }
//
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_proj/BottomNavigationBar.dart';
import 'package:my_proj/widgets/Signup.dart';

import '../HomePage.dart';
import 'CustomButotn.dart';
import 'CustomTextField.dart';

class Login extends StatefulWidget {
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    final myController = TextEditingController();
    return Scaffold(
      backgroundColor: Color(0xff1C1C2D),
      appBar: AppBar(
        backgroundColor: Colors.white,
        toolbarHeight: 40, // Adjusted height
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 50, // Adjusted height
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20), // Adjusted padding
            child: Text(
              'Welcome!!',
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontFamily: 'FontMain1',
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          CustomTextField(
            lname: 'Enter Your Name',
            hname: 'Name',
            bgcolor: Color(0Xff1F1F33),
            controller: myController,
            // Adjusted height
          ),
          SizedBox(
            height: 20,
          ),
          CustomTextField(
            lname: 'Enter Your Password',
            hname: 'Password',
            bgcolor: Color(0Xff1F1F33),
             // Adjusted height
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20), // Adjusted padding
            child: Text(
              'Forgot Password?',
              style: TextStyle(
                fontSize: 10,
                color: Colors.white,
                fontWeight: FontWeight.w100,
              ),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Center(
            child: SizedBox(
              width: MediaQuery.sizeOf(context).width * 0.9,
              height: 45, // Adjusted height
              child: CustomRoundButton(
                btname: 'Login Up',
                btcolor: Color(0xff613896),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MyBottomNavBar(),
                    ),
                  );
                },
              ),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Center(
            child: Text(
              'Or Continue With',
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CircleAvatar(
                backgroundColor: Color(0xff4B4B61),
                radius: 40, // Adjusted radius
                child: FaIcon(
                  FontAwesomeIcons.google,
                  size: 30, // Adjusted icon size
                  color: Colors.red,
                ),
              ),
              CircleAvatar(
                backgroundColor: Color(0xff4B4B61),
                radius: 40, // Adjusted radius
                child: FaIcon(
                  FontAwesomeIcons.facebook,
                  size: 30, // Adjusted icon size
                  color: Colors.blue,
                ),
              ),
              CircleAvatar(
                backgroundColor: Color(0xff4B4B61),
                radius: 40, // Adjusted radius
                child: FaIcon(
                  FontAwesomeIcons.apple,
                  size: 30, // Adjusted icon size
                  color: Colors.white,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 40,
          ),
          Center(
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MyBottomNavBar(),
                  ),
                );
              },
              child: Text(
                'Dont have an account? Signin',
                style: TextStyle(
                  fontSize: 20, // Adjusted font size
                  color: Colors.white,
                  fontFamily: 'FontMain1',
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
