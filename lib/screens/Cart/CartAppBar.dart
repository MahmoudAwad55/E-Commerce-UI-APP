import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CartAppBar extends StatelessWidget {
  const CartAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(25),
      child: Row(
        children: [
          InkWell(
              onTap: () {  },
              child: Icon(
                CupertinoIcons.cart_fill,
                size: 30,
                color: Colors.deepOrangeAccent,
              )),
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              "Cart",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 23,
                  color: Colors.black),
            ),
          ),
          Spacer(),
          Icon(Icons.more_vert ,
              size:30,
          color: Colors.black ,),
        ],
      ),
    );
  }
}
