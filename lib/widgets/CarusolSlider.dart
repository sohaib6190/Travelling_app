import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CarusolSlider extends StatelessWidget {

final  List<Map<String, String>> list;

CarusolSlider(this.list);

  @override
  Widget build(BuildContext context) {

    return CarouselSlider(
      items: list.map((item) {
        return Container(
          width: 400,
          height: 400,
          margin: EdgeInsets.all(6.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0),
            image: DecorationImage(
              image: AssetImage(item['imgpath']!),
              fit: BoxFit.cover,
            ),
          ),
          child: Text( item['name']!,style: TextStyle(fontSize: 10,color: Colors.black38,fontFamily: 'FontMain1'),),
        );
      }).toList(),
      options: CarouselOptions(
        height: 180.0,
        enlargeCenterPage: true,
        autoPlay: true,
        aspectRatio: 16 / 9,
        autoPlayCurve: Curves.fastOutSlowIn,
        enableInfiniteScroll: true,
        autoPlayAnimationDuration: Duration(milliseconds: 600),
        viewportFraction: 0.8,
      ),
    );

  }
}
