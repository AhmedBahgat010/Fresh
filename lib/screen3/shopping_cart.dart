import 'package:flutter/material.dart';
import 'package:sdvapp/screen1/colors.dart';

class Cart extends StatefulWidget {
  Cart({@required this.imagePrices});
  final String imagePrices;
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
          top: 60,
        ),
        child: Container(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 170),
                child: Text(
                  "Shopping Cart",
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 200),
                child: Center(
                  child: Column(
                    children: [
                      Image.asset("images/cart.png", height: 200),
                      Padding(
                        padding: const EdgeInsets.only(top: 8, left: 30),
                        child: Text(
                          "No Items In Cart",
                          style: TextStyle(
                            fontSize: 23,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      Container(
                        height: 100,
                        width: double.infinity,
                        margin: EdgeInsets.all(6),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Row(
                          children: [
                            //الكونتينر بتاع الصورة نفسة
                            Container(
                              height: 100,
                              width: 100,
                              decoration: BoxDecoration(
                                color:pink,
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                  image: AssetImage("${widget.imagePrices}"),
                                ),
                              ),
                            ),
                            SizedBox(width: 20),
                            Column(
                              //      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "widget.title1",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25,
                                  ),
                                ),
                                SizedBox(
                                  height: 9,
                                ),
                                Text(
                                  " widget.title2",
                                  style: TextStyle(
                                    color: gray,
                                    fontSize: 18,
                                  ),
                                ),
                                SizedBox(
                                  height: 9,
                                ),
                                Text(
                                  "   widget.title3",
                                  style: TextStyle(
                                    color: pink,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 22,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
