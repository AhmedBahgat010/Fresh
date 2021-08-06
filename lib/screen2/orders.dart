import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:sdvapp/screen1/colors.dart';
import 'package:sdvapp/screen2/containersize.dart';
import 'package:sdvapp/screen2/sugercontainer.dart';
import 'package:sdvapp/screen3/shopping_cart.dart';


class Orders extends StatefulWidget {
  Orders({this.imagePrice, this.colorPrice,this.title1,this.title2});

  final String imagePrice;
  final Color colorPrice;
  final String title1;
  final String title2;

  @override
  _OrdersState createState() => _OrdersState();
}

class _OrdersState extends State<Orders> {
  int pageIndex = 1;
  int SugerIndex = 1;
  int Number = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Stack(
            alignment: Alignment.bottomLeft,
            children: [
              SingleChildScrollView(
                child: Center(
                  child: Container(
                    height:MediaQuery.of(context).size.height,
                    width:MediaQuery.of(context).size.width,
                    alignment: Alignment.bottomLeft,
                    decoration: BoxDecoration(
                      color: widget.colorPrice,
                      image: DecorationImage(
                        scale: 2.5,
                        alignment: AlignmentDirectional(0.0, -.8),
                        image: AssetImage("${widget.imagePrice}"),
                      ),
                    ),
                  ),
                ),
              ),
              //.......كونتينر الابيض بداخلة choice size.......
              SingleChildScrollView(
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(50),
                          topLeft: Radius.circular(50))),
                  height: 500,
                  width:MediaQuery.of(context).size.width,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20, left: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              widget.title1,
                              style: TextStyle(
                                  color: pink,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 28),
                            ),



                            Padding(
                              padding: const EdgeInsets.only(right: 20),
                              child: Text(
                                widget.title2,
                                style: TextStyle(
                                    color: pink,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 28),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 18,
                        ),
                        Text(
                          "Choice Size",
                          style: TextStyle(
                              color: gray, fontWeight: FontWeight.bold, fontSize: 28),
                        ),
                        SizedBox(
                          height: 19,
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
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "Suger Level",
                          style: TextStyle(
                              color: gray, fontWeight: FontWeight.bold, fontSize: 28),
                        ),
                        SizedBox(
                          height: 19,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  SugerIndex = 1;
                                });
                              },
                              child: SugerContainer(
                                textsuger: "0%",
                                colorcontainersuger: SugerIndex == 1 ? pink2 : white,
                                colortextsuger: SugerIndex == 1 ? pink : gray,
                                colorshadow: SugerIndex == 1
                                    ? white
                                    : Colors.grey.withOpacity(0.5),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  SugerIndex = 2;
                                });
                              },
                              child: SugerContainer(
                                textsuger: "25%",
                                colorcontainersuger: SugerIndex == 2 ? pink2 : white,
                                colortextsuger: SugerIndex == 2 ? pink : gray,
                                colorshadow: SugerIndex == 2
                                    ? white
                                    : Colors.grey.withOpacity(0.5),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  SugerIndex = 3;
                                });
                              },
                              child: SugerContainer(
                                textsuger: "50%",
                                colorcontainersuger: SugerIndex == 3 ? pink2 : white,
                                colortextsuger: SugerIndex == 3 ? pink : gray,
                                colorshadow: SugerIndex == 3
                                    ? white
                                    : Colors.grey.withOpacity(0.5),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  SugerIndex = 4;
                                });
                              },
                              child: SugerContainer(
                                textsuger: "100%",
                                colorcontainersuger: SugerIndex == 4 ? pink2 : white,
                                colortextsuger: SugerIndex == 4 ? pink : gray,
                                colorshadow: SugerIndex == 4
                                    ? white
                                    : Colors.grey.withOpacity(0.5),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 21,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                height: 55,
                                width: 140,
                                decoration: BoxDecoration(
                                  color: white,
                                  border: Border.all(color: pink, width: 3.5),
                                  borderRadius: BorderRadius.circular(40),
                                ),
                                child: Center(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            Number++;
                                          });
                                        },
                                        child: Icon(
                                          Icons.add,
                                          size: 25,
                                          color: pink,
                                        ),
                                      ),
                                      Text(
                                        "$Number",
                                        style: TextStyle(color: gray, fontSize: 30),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(bottom: 15),
                                        child: GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              Number--;
                                            });
                                          },
                                          child: Icon(
                                            Icons.minimize_rounded,
                                            size: 25,
                                            color: pink,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),

                              // SizedBox(

                              //   width: 70,

                              // ),

                              GestureDetector(
                                onTap: () {
                                  // Navigator.pop(context,imagePrices:widget.imagePrice);

                                },
                                child: Container(
                                  height: 58,
                                  width: 180,
                                  decoration: BoxDecoration(
                                    color: pink,
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  child: Center(
                                    child: Text(
                                      "Add To Cart",
                                      style: TextStyle(
                                          fontSize: 24,
                                          color: white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
