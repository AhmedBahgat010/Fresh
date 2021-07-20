import 'package:flutter/material.dart';
import 'package:sdvapp/screen1/colors.dart';
import 'package:sdvapp/screen1/homepage.dart';
import 'package:sdvapp/screen1/ContainerImageMenu.dart';
import 'package:sdvapp/screen2/containerprice.dart';

class Orders extends StatefulWidget {
  @override
  _OrdersState createState() => _OrdersState();
}

class _OrdersState extends State<Orders> {
  int pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ContainerPrice(imagee:"images/22.png" ,colors: orange,),
    );
  }
}
