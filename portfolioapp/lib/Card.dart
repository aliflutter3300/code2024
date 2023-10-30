import 'package:flutter/material.dart';
import 'package:portfolioapp/constant.dart';

class MyCard extends StatefulWidget {
  const MyCard({super.key});

  @override
  State<MyCard> createState() => _MyCardState();
}

class _MyCardState extends State<MyCard> {
  myCard(icon, text) {
    return Container(
      margin: EdgeInsets.only(left: 12, top: 10),
      height: 100,
      width: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.black,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: Colors.white,
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            text,
            style: iconText,
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              myCard(Icons.android, "Android"),
              myCard(Icons.javascript, "Java"),
              myCard(Icons.language, "CSS"),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              myCard(Icons.design_services_rounded, "App UI"),
              myCard(Icons.design_services_sharp, "App Layout"),
              myCard(Icons.api, "API"),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              myCard(Icons.fiber_smart_record, "Firebase"),
              myCard(Icons.animation, "Animation"),
              myCard(Icons.person, "Profile"),
            ],
          ),
         


        ],
      ),
    );
  }
}
