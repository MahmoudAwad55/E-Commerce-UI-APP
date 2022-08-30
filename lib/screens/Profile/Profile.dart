import 'Body.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 90),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [

              const Text(
                'Profile',
                style: TextStyle(color: Colors.black,fontWeight:FontWeight.bold, fontSize: 25 ) ,
              ),
            ],
          ),
        ),
      ),

      body: Body(),

    );
  }
}