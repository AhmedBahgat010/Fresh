import 'package:flutter/material.dart';
import 'package:sdvapp/screen1/colors.dart';
class ContainerSize extends StatelessWidget {
   ContainerSize({
   @required this.textsize,this.mlsize,this.sizeicon,this.sizebox,this.coloricon,this.colortextsize,this.colormlsize
,this.colorContainer,this.Colorshadow
  }) ;
   final Color colorContainer;
final String textsize;
final Color colortextsize;
final String mlsize;
final Color colormlsize;
final double sizeicon;
final Color coloricon;
final Color Colorshadow;

final double sizebox;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      width: 115,
      decoration: BoxDecoration(
        color: colorContainer,
        boxShadow: [
          BoxShadow(
            color: Colorshadow,
            spreadRadius: 2,
            blurRadius: 4,
          ),
        ],
        borderRadius: BorderRadius.circular(20),
      ),
      child: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 5),
              child: Container(
                width: sizeicon,
                height: sizeicon,
                child: ImageIcon(
                  AssetImage(
                    "images/cola.png",
                  ),
                  color: coloricon,
                ),
              ),
            ),
            SizedBox(height: sizebox,),
            Text(
              textsize,
              style: TextStyle(
                color: colortextsize,
                fontWeight: FontWeight.bold,fontSize: 28,),
            ),
            Text(mlsize,style:  TextStyle(
              color: colormlsize,fontSize: 23,),),

          ],
        ),
      ),
    );
  }
}
