import 'package:flutter/material.dart';
import 'package:sdvapp/screen1/colors.dart';

class SugerContainer extends StatelessWidget {
SugerContainer({@required this.textsuger,this.colortextsuger,this.colorcontainersuger,this.colorshadow});
final String textsuger;
final Color colortextsuger;
final Color colorcontainersuger;
final Color colorshadow;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: 85,
      decoration: BoxDecoration(
        color: colorcontainersuger,
        boxShadow: [
          BoxShadow(
            color: colorshadow,
            spreadRadius: 2,
            blurRadius: 4,
          ),
        ],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
          child: Text(
       textsuger,
        style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold,color: colortextsuger),
      )),
    );
  }
}
