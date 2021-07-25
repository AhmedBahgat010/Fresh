import 'package:flutter/material.dart';

import 'package:sdvapp/screen1/colors.dart';
import 'package:sdvapp/screen2/containersize.dart';

class ContainerPrice extends StatefulWidget {
  ContainerPrice({
    @required this.imagePrice,
    this.colorPrice,
  });

  final String imagePrice;
  final Color colorPrice;

  @override
  _ContainerPriceState createState() => _ContainerPriceState();
}

class _ContainerPriceState extends State<ContainerPrice> {
  int pageIndex = 1;

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
              color: widget.colorPrice,
              image: DecorationImage(
                scale: 4.0,
                alignment: AlignmentDirectional(0.0, -.7),
                image: AssetImage("${widget.imagePrice}"),
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(50),
                    topLeft: Radius.circular(50))),
            height: 450,
            width: double.infinity,
            child: Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 20, left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Aloha Pineapple",
                          style: TextStyle(
                              color: pink,
                              fontWeight: FontWeight.bold,
                              fontSize: 28),
                        ),
                        SizedBox(
                          width: 90,
                        ),
                        Text(
                          "\$31.5",
                          style: TextStyle(
                              color: pink,
                              fontWeight: FontWeight.bold,
                              fontSize: 28),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 18,
                    ),
                    Text(
                      "Choice Size",
                      style: TextStyle(
                          color: gray,
                          fontWeight: FontWeight.bold,
                          fontSize: 28),
                    ),
                    SizedBox(
                      height: 18,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              pageIndex = 1;
                            });
                          },
                          child: ContainerSize(
                            colorContainer: pageIndex == 1 ? pink2 : white,
                            coloricon: pageIndex == 1 ? pink : black,
                            colormlsize: pageIndex == 1 ? pink : gray,
                            colortextsize: pageIndex == 1 ? pink : gray,
                            Colorshadow: pageIndex == 1
                                ? white
                                : Colors.grey.withOpacity(0.5),
                            textsize: "Small",
                            sizeicon: 50,
                            mlsize: "125ml",
                            sizebox: 19,
                          ),
                        ),
                        SizedBox(
                          width: 9,
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              pageIndex = 2;
                            });
                          },
                          child: ContainerSize(
                              colorContainer: pageIndex == 2 ? pink2 : white,
                              coloricon: pageIndex == 2 ? pink : black,
                              colormlsize: pageIndex == 2 ? pink : gray,
                              colortextsize: pageIndex == 2 ? pink : gray,
                              Colorshadow: pageIndex == 2
                                  ? white
                                  : Colors.grey.withOpacity(0.5),
                              textsize: "Medium",
                              sizeicon: 59,
                              mlsize: "175ml",
                              sizebox: 11),
                        ),
                        SizedBox(
                          width: 9,
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              pageIndex = 3;
                            });
                          },
                          child: ContainerSize(
                            colorContainer: pageIndex == 3 ? pink2 : white,
                            coloricon: pageIndex == 3 ? pink : black,
                            colormlsize: pageIndex == 3 ? pink : gray,
                            colortextsize: pageIndex == 3 ? pink : gray,
                            Colorshadow: pageIndex == 3
                                ? white
                                : Colors.grey.withOpacity(0.5),
                            textsize: "Larg",
                            sizeicon: 70,
                            mlsize: "250ml",
                            sizebox: 3,
                          ),
                        ),
                        SizedBox(
                          width: 9,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
