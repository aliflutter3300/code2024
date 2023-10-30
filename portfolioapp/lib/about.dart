import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolioapp/constant.dart';

class MyAbout extends StatefulWidget {
  const MyAbout({Key? key}) : super(key: key);

  @override
  State<MyAbout> createState() => _MyAboutState();
}

class _MyAboutState extends State<MyAbout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: Container(
        child: Stack(
          children: [
            Container(
              padding: EdgeInsets.only(top: 160),
              child: Column(
                children: [
                  Center(
                    child: CircleAvatar(
                      radius: 100,
                      backgroundImage: AssetImage("images/4.jpg"),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Hello, I am",
                    style: TextStyle(color: Colors.white, fontSize: 26),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Muhammad Amanat",
                    style: mainText,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Android App Developer",
                    style: SubMainText,
                  ),
                  SizedBox(
                    height: 60,
                  ),
                  SizedBox(
                    width: 120,
                    height: 40,
                    child: TextButton(
                      onPressed: () {},
                      style:
                          TextButton.styleFrom(backgroundColor: Colors.white),
                      child: Text("Hire Me",
                          style: TextStyle(color: Colors.black)),
                    ),
                  ),
                  SizedBox(
                    height: 60,
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          FontAwesomeIcons.instagram,
                          color: Colors.white,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          FontAwesomeIcons.linkedin,
                          color: Colors.white,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          FontAwesomeIcons.google,
                          color: Colors.white,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          FontAwesomeIcons.twitter,
                          color: Colors.white,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          FontAwesomeIcons.facebook,
                          color: Colors.white,
                        ),
                      ),

                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
