import 'package:flutter/material.dart';

class page_transition extends StatelessWidget {
  const page_transition({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}


enum PageTransitionType {
  fade,
  rightToLeft,
  leftToRight,
  upToDown,
  downToUp,
  scale,
  rotate,
  size,
  rightToLeftWithFade,
  leftToRightWithFade,
}