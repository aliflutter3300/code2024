import 'package:flutter/material.dart';
import 'package:user/Constant.dart';


class SinglePost extends StatelessWidget {
  const SinglePost({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(50),
                topLeft: Radius.circular(50))),
        margin: EdgeInsets.only(left: 30,right: 10),
        height: 150,
        width: double.infinity,
        child: ClipRRect(borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(50),
            topLeft: Radius.circular(50)),child: Image.asset("images/1.jpg",fit: BoxFit.cover,)),
      ),

      Container(
        margin: EdgeInsets.only(left: 50),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              "Subcribe to flutter today",
              style: postText,
            ),
            SizedBox(
              width: 20,
            ),
            Icon(
              Icons.comment_rounded,
              color: Colors.white,
            ),
            Text(
              "936",
              style: postText,
            ),
            SizedBox(
              width: 20,
            ),
            Icon(
              Icons.favorite_border,
              color: Colors.white,
            ),
            Text(
              "20k",
              style: postText,
            ),
          ],
        ),
      ),
    ],);
  }
}
