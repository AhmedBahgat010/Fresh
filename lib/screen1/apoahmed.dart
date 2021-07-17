import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget cupertino() {
  return SizedBox(
    height: 250,
    width: double.infinity,
    child: Carousel(
      images: [
        Image.asset(
          'images/1.jfif',
          width: double.infinity,
        ),
        Image.asset(
          'images/4.png',
          width: double.infinity,
        ),
        Image.asset(
          'images/2.jfif',
          width: double.infinity,
        ),
        Image.asset(
          'images/3.jfif',
          width: double.infinity,
        ),
      ],
      dotSize: 6.0,
      dotSpacing: 25.0,
      radius: Radius.circular(200.0),
      dotColor: Colors.pink,
      indicatorBgPadding: 5,
      dotBgColor: Colors.white,
      borderRadius: true,
      dotIncreasedColor: Colors.amber,
      moveIndicatorFromBottom: 180.0,
      noRadiusForIndicator: true,
      overlayShadowSize: 0.8,
    ),
  );
}
