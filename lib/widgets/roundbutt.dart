import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class RoundedButton extends StatelessWidget{

      final String btname;
      final Icon? icon;
      final Color bgcolor;
      final TextStyle? textStyle;
      final VoidCallback? callback;


      RoundedButton
          ({
          required this.btname,
          this.icon,
          this.bgcolor = Colors.black,
          this.textStyle,
          this.callback});
      @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: () {
      callback!();

    },  child: icon!=null ? Row(

      children: [
        icon!,
        Text(btname ,style: textStyle )
      ],

        ) :Text(btname ,style: textStyle,),
        style: ElevatedButton.styleFrom(
        backgroundColor: bgcolor,
      shadowColor: bgcolor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(21),
          bottomLeft: Radius.circular(21),
        )
      )


    ),

    );
  }

}