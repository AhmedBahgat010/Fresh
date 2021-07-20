import 'package:flutter/material.dart';

import 'package:sdvapp/screen1/colors.dart';

class ContainerPrice extends StatefulWidget {
  ContainerPrice({@required this.imagee,this.colors});
  final String imagee;
  final Color colors;

  @override
  _ContainerPriceState createState() => _ContainerPriceState();
}

class _ContainerPriceState extends State<ContainerPrice> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomLeft,
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            alignment: Alignment.bottomLeft,
            decoration: BoxDecoration(
              color:widget.colors,
              image: DecorationImage(
                scale: 14,
                alignment: AlignmentDirectional(0.0, -.7),
                image: AssetImage("${widget.imagee}"),
              ),
            ),
          ),
          Container(
            height: 450,
            width: double.infinity,
            child: Expanded(
              child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        "Aloha Pineapple",
                        style:
                            TextStyle(color: pink, fontWeight: FontWeight.bold,fontSize: 28),
                      ),
                      SizedBox(width: 110,),
                      Text("\$31.5",
                        style:
                        TextStyle(color: pink, fontWeight: FontWeight.bold,fontSize: 28),),
                    ],
                  ),
                ],
              ),
            ),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(50),
                    topLeft: Radius.circular(50))),
          ),
        ],
      ),
    );
  }
}
