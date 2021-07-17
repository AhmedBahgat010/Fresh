import 'package:flutter/material.dart';

class ContainerImageMenu extends StatelessWidget {
  ContainerImageMenu({@required this.colorcontainer,this.imagecontainer, this.title1, this.title2, this.title3});

  final String title1;
  final String title2;
  final String title3;
final Color colorcontainer;
final String imagecontainer;
  @override
  Widget build(BuildContext context) {
    return Container(
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
              color: colorcontainer,
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                image: AssetImage("$imagecontainer"),
              ),
            ),
          ),
          SizedBox(width: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title1,
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                title2,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                ),
              ),
              Text(
                title3,
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
