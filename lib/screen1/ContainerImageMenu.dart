import 'package:flutter/material.dart';
import 'package:sdvapp/screen2/orders.dart';
import 'package:sdvapp/screen1/colors.dart';
class ContainerImageMenu extends StatefulWidget {
  ContainerImageMenu({@required this.colorcontainer,this.imagecontainer, this.title1, this.title2, this.title3});

  final String title1;
  final String title2;
  final String title3;
final Color colorcontainer;
final String imagecontainer;

  @override
  _ContainerImageMenuState createState() => _ContainerImageMenuState();
}

class _ContainerImageMenuState extends State<ContainerImageMenu> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => Orders()));
      },
      child: Container(
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
                color: widget.colorcontainer,
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  image: AssetImage("${widget.imagecontainer}"),
                ),
              ),
            ),
            SizedBox(width: 20),
            Column(
        //      mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Text(
                  widget.title1,
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
                SizedBox(
                  height:9,
                ),
                Text(
                  widget.title2,
                  style: TextStyle(
                    color:gray,
                    fontSize: 18,
                  ),
                ),
SizedBox(
  height: 9,
),
                Text(
                  widget.title3,
                  style: TextStyle(
                    color:pink,
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
