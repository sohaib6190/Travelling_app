import 'package:fluid_bottom_nav_bar/fluid_bottom_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NavBar extends StatelessWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _handleNavigationChange;

      return FluidNavBar(
      animationFactor: 1.0,
      scaleFactor: 2.0,



      icons: [

        FluidNavBarIcon(icon: Icons.home,backgroundColor: Colors.black,),
        FluidNavBarIcon(icon: Icons.shopping_cart_outlined,backgroundColor: Colors.black),
        FluidNavBarIcon(icon: Icons.shopping_bag,backgroundColor: Colors.black),
        FluidNavBarIcon(icon: Icons.favorite_border,backgroundColor: Colors.black),
        FluidNavBarIcon(icon: Icons.percent_outlined,backgroundColor: Colors.black),
      ],
      onChange: _handleNavigationChange,
      style: FluidNavBarStyle(
        iconUnselectedForegroundColor: Color(0xff9B9B9B),
        iconSelectedForegroundColor: Colors.white,
        iconBackgroundColor: Colors.red,

        barBackgroundColor: Colors.black,

      ),
    );
  }
}
