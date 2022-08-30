import 'package:flutter/material.dart';
import 'package:graduation_project/screens/Cart/CartAppBar.dart';

import 'CartBottmNavBar.dart';
import 'CartItemSamples.dart';

class cartPage extends StatelessWidget {
  const cartPage({Key? key,  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        physics: const BouncingScrollPhysics(
            parent: AlwaysScrollableScrollPhysics()),
        children: [
          CartAppBar(),
          Container(
            height: 700,
            padding: EdgeInsets.only(top: 15),
            decoration: const BoxDecoration(
                color: Color(0xFFEDECF2),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(35),
                  topRight: Radius.circular(35),
                )),
            child: Column(
              children: [
                CartItemSamples(),

                Container(
                  margin: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
                  padding: EdgeInsets.all(10),
                  child: Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.deepOrangeAccent,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Icon(Icons.add, color: Colors.white
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(),
                        child: Text(
                          "Add Coupon",
                          style: TextStyle(color: Colors.deepOrangeAccent , fontWeight: FontWeight.bold , fontSize: 16),

                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: CartBottmNavBar() ,
    );
  }
}
