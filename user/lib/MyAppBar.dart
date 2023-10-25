import 'package:flutter/material.dart';
import 'package:user/Constant.dart';


class MyAppBar extends StatelessWidget {
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 50),
      width: double.infinity,
      height: 150,
      decoration: BoxDecoration(
          color: Colors.grey.shade300,
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(80))),
      child: Row(
        children: [
          Text(
            "Profile",
            style: titleText,
          ),
          Expanded(child: Container()),
          Icon(Icons.search_rounded,size: 30,)
        ],
      ),
    );
  }
}
