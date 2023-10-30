import 'package:flutter/material.dart';
import 'package:portfolioapp/constant.dart';

class MyData extends StatefulWidget {
  const MyData({super.key});

  @override
  State<MyData> createState() => _MyDataState();
}

class _MyDataState extends State<MyData> {
  mydata(num, type) {
    return Row(
      children: [
        Container(
            padding: EdgeInsets.only(left: 20, top: 20),
            child: Text(
              num,
              style: titleText,
            )),
        Container(
            padding: EdgeInsets.only(top: 26, right: 10), child: Text(type)),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        mydata("80", " Projects"),
        mydata("60", " Clients"),
        mydata("80", " Messages"),
      ],
    );
    ;
  }
}
