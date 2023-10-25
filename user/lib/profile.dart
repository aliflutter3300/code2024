import 'package:flutter/material.dart';
import 'package:user/Constant.dart';


class MyProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 160),
      height: 350,
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(80))),
      child: Column(
        children: [
          CircleAvatar(backgroundImage: AssetImage("images/4.jpg")),
          Text(
            "M.Amanat",
            style: nameText,
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.location_on,
                size: 14,
              ),
              Text("Vehari Panjab")
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Text(
                    "984",
                    style: dataText,
                  ),
                  Text("Posts",style: fText,),
                ],
              ),
              SizedBox(
                width: 60,
              ),
              Column(
                children: [
                  Text(
                    "20 M",
                    style: dataText,
                  ),
                  Text("Followers",style: fText,),
                ],
              ),
              SizedBox(
                width: 40,
              ),
              Column(
                children: [
                  Text(
                    "0",
                    style: dataText,
                  ),
                  Text("Following",style: fText,),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
