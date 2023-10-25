import 'package:flutter/material.dart';
import 'package:user/MyAppBar.dart';
import 'package:user/post.dart';
import 'package:user/profile.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.purpleAccent.shade700,
        body: ListView(
          children: [
            Stack(
              children: [
                MyProfile(),
                MyAppBar(),
                MyPost(),

              ],
            )
          ],
        ),
      ),
    );
  }
}
