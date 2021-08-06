import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sdvapp/screen1/colors.dart';

Widget cupertino() {
  return SizedBox(

    height: 250,
   // width: double.infinity,

    child: Carousel(
      dotSize:7.0,
      dotSpacing: 25.0,
dotVerticalPadding:10,
 radius: Radius.circular(90),
      dotColor: pink,
      indicatorBgPadding: 5,
dotBgColor:Colors.white.withOpacity(0) ,

  borderRadius: true,
      dotIncreasedColor: Colors.amber,
      moveIndicatorFromBottom: 180.0,
      noRadiusForIndicator: true,
      overlayShadowSize: 0.8,
      images: [

        Image.asset(

          'images/1.jfif',
          width: double.infinity,fit: BoxFit.cover ,
        ),
        Image.asset(
          'images/4.png',
          width: double.infinity,fit: BoxFit.cover,
        ),
        Image.asset(
          'images/2.jfif',
          width: double.infinity,fit: BoxFit.cover,
        ),
        Image.asset(
          'images/3.jfif',
          width: double.infinity,fit: BoxFit.cover,
        ),
      ],

    ),
  );
}
