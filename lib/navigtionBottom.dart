import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'screens/Cart/cartPage.dart';
import 'screens/home/home_screen.dart';
import 'screens/Profile/Profile.dart';
class navigtionBottom extends StatefulWidget {
  const navigtionBottom({Key? key}) : super(key: key);

  @override
  State<navigtionBottom> createState() => _navigtionBottom();
}

class _navigtionBottom extends State<navigtionBottom> {
  final items = const [
    Icon(Icons.home, size: 30),
    Icon(CupertinoIcons.cart_fill, size: 30),
    Icon(Icons.list, size: 30),
  ];

  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrangeAccent,

      bottomNavigationBar: CurvedNavigationBar(

        items: items,
        index: index,
        onTap: (selctedIndex){
          setState(() {
            index = selctedIndex;
          });
        },
        height: 60,
        backgroundColor: Colors.transparent,
        animationDuration: const Duration(milliseconds: 300),
        // animationCurve: ,
      ),
      body: Container(

          child: getSelectedWidget(index: index)
      ),
    );
  }

  Widget getSelectedWidget({required int index}){
    Widget widget;
    switch(index){
      case 0:
        widget =  HomeScreen();
        break;
      case 1:
        widget =  cartPage();
        break;
      default:
        widget =   Profile();
        break;
    }
    return widget;
  }
}
