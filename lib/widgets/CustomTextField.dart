import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String lname;
  final String hname;
  final Color bgcolor;
  final TextEditingController? controller;


  CustomTextField({
    required this.lname,
    required this.hname,
    required this.bgcolor,
    this.controller,

});




  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: MediaQuery.sizeOf(context).width*0.9,
        child: TextField(
          controller: controller,
          style: TextStyle(fontSize: 20,color: Colors.white),
          decoration: InputDecoration(

            suffixStyle: TextStyle(fontSize: 30),
              contentPadding: EdgeInsets.only(left: 10),
              enabledBorder: OutlineInputBorder(
                borderSide:
                BorderSide( color: Colors.white10),
                borderRadius: BorderRadius.circular(4.0),
              ),
              labelText: lname,
              hintText: hname,
              filled: true,
              fillColor: bgcolor,

              labelStyle: TextStyle(fontSize: 13,fontFamily: 'FontMain1',color: Colors.grey),
          ),
        ),
      ),
    ) ;
  }
}
