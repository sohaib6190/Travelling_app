import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class OTP extends StatelessWidget {
  const OTP({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var color1 = Color(0xffF0F0F0);
    var flags = {


    };

    return Scaffold(
      body:Container(
        width: double.infinity,
        height: double.infinity,
        color:  color1,

        child: Column(
          //crossAxisAlignment: CrossAxisAlignment.start,
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 92,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 22),
              child: Row(
                children: [
                  SizedBox(
                    width:22 ,
                  ),
                  Text('Sign up with  ',style: TextStyle(fontSize: 28,fontWeight: FontWeight.w400,fontFamily: 'Silka-Regular'),),
                  Text('phone ',style: TextStyle(fontSize: 28,fontWeight: FontWeight.w700,color: Color(0xff242A37)),),
                ],

              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 180),
              child: Text('number',style: TextStyle(fontSize: 28,fontWeight: FontWeight.w700,color: Color(0xff242A37)),),
            ),
            SizedBox(
              height: 20,
            ),
            Text('Create your account by entering your phone number.',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 12,color: Color(0xff242A37),fontFamily: 'Silka-Regular',
            ),),


            SizedBox(
              height: 21,
            ),


          Container(
            width: 334,
            height: 56,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(10)),
              border: Border.all(color: Color(0xfEFEFF4),width: 5),



            ),
            child: DropdownMenu(dropdownMenuEntries: [
              
            ],),
          )

          ],




        ),


      ) ,


    );
  }
}
