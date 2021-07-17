import 'package:flutter/cupertino.dart';
import 'Listmenu.dart';
import 'ContainerMenu.dart';

import 'package:flutter/material.dart';

import 'ContainerImageMenu.dart';
import 'apoahmed.dart';
import 'colors.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int pageIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        actions: [
          FlatButton(
              onPressed: () {}, child: Icon(Icons.shopping_cart_outlined))
        ],
        backgroundColor: Colors.white,
        title: Text("Fresh",
            style: TextStyle(
              color: Colors.black,
              fontSize: 25,
              fontWeight: FontWeight.bold,
            )),
        elevation: 0,
      ),
      body: ListView(
        children: [
          cupertino(),
          Row(
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    pageIndex = 0;
                  });
                },
                child: ContainerMenu(
                  colour: pageIndex == 0 ? pink : white,
                  icon: AssetImage("images/tea-cup.png"),
                  title: "Tea",
                  colortitle: pageIndex == 0 ? white : black,
                  coloricon: pageIndex == 0 ? white : black,
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    pageIndex = 1;
                  });
                },
                child: ContainerMenu(
                  colour: pageIndex == 1 ? pink : white,
                  icon: AssetImage("images/coffee.png"),
                  title: "coffee",
                  colortitle: pageIndex == 1 ? white : black,
                  coloricon: pageIndex == 1 ? white : black,
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    pageIndex = 2;
                  });
                },
                child: ContainerMenu(
                  colour: pageIndex == 2 ? pink : white,
                  icon: AssetImage("images/ice-cream.png"),
                  title: "cream",
                  colortitle: pageIndex == 2 ? white : black,
                  coloricon: pageIndex == 2 ? white : black,
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    pageIndex = 3;
                  });
                },
                child: ContainerMenu(
                  colour: pageIndex == 3 ? pink : white,
                  icon: AssetImage("images/cola.png"),
                  title: "freeze",
                  colortitle: pageIndex == 3 ? white : black,
                  coloricon: pageIndex == 3 ? white : black,
                ),
              ),
            ],
          ),
          ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            padding: EdgeInsets.all(10),
            itemCount: menu[pageIndex].length,
            itemBuilder: (_, index) {
              return ContainerImageMenu(
                  imagecontainer: menu[pageIndex][index][0],
                  colorcontainer: menu[pageIndex][index][1],
                  title1: menu[pageIndex][index][2],
                  title2: menu[pageIndex][index][3],
                  title3: menu[pageIndex][index][4]);
            },
          ),
        ],
      ),
    );
  }
}

//       Column(
//         children: [
//           ContainerImageMenu(
//             title1: "aa",
//             title2: "fvcxvc",
//             title3: "gfbxcvbcx",
//           ),
//           ContainerImageMenu(
//             title1: "fdvcxvdcv",
//             title2: "fgdvcxzvxc",
//             title3: "550564",
//           ),
//           ContainerImageMenu(
//             title1: "aa",
//             title2: "fvcxvc",
//             title3: "gfbxcvbcx",
//           ),
//           ContainerImageMenu(
//             title1: "aa",
//             title2: "fvcxvc",
//             title3: "gfbxcvbcx",
//           ),
//           ContainerImageMenu(
//             title1: "aa",
//             title2: "fvcxvc",
//             title3: "gfbxcvbcx",
//           ),
//         ],
//       ),
//       SizedBox(
//         height: 10,
//       ),
//     ],
//   ),
// );
