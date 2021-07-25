import 'package:flutter/material.dart';
import 'package:sdvapp/screen1/Listmenu.dart';

import 'containerprice.dart';

class Orders extends StatefulWidget {
  Orders({this.imagePrice2, this.colorPrice});

  final String imagePrice2;
  final Color colorPrice;

  @override
  _OrdersState createState() => _OrdersState();
}

class _OrdersState extends State<Orders> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ContainerPrice(
        imagePrice: widget.imagePrice2,
        colorPrice: widget.colorPrice,
      ),
    );
  }
}
