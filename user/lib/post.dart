import 'package:flutter/material.dart';
import 'package:user/singlepost.dart';


class MyPost extends StatelessWidget {
  const MyPost({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 380),
      child: Column(
        children: [
          Column(
            children: [
              SinglePost(),
              SizedBox(height: 10,),
              SinglePost(),
              SizedBox(height: 10,),

              SinglePost(),

            ],
          )
        ],
      ),
    );
  }
}
