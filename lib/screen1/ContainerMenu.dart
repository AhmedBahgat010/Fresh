import 'package:flutter/material.dart';

class ContainerMenu extends StatelessWidget {
  ContainerMenu({@required this.colour, this.coloricon ,this.title,this.colortitle ,this.icon});
final Color colour;
final Color colortitle;
final Color coloricon;
  final String title;
  final AssetImage icon;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child:  Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ImageIcon(
              icon,
              color: coloricon,
              size: 60,
            ),
            SizedBox(
              height: 9,
            ),
            Text(
              title,
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color:colortitle,
              ),
            ),
          ],
        ),
        height: 140,
        width: 90,
        margin: EdgeInsets.all(6),
        decoration: BoxDecoration(
          color:colour,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 4,
            ),
          ],
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
}
