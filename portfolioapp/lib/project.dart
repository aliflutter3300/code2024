import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolioapp/constant.dart';

class MyProject extends StatefulWidget {
  const MyProject({Key? key}) : super(key: key);

  @override
  State<MyProject> createState() => _MyProjectState();
}

class _MyProjectState extends State<MyProject> {
  myProject(tex1, tex2, tex3, tex4, icon1, icon2) {
    return Card(
      color: Color(0xff262628),
      child: Container(
        margin: EdgeInsets.only(left: 20, right: 20, top: 20),
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              tex1,
              style: proText,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              tex2,
              style: pro1Text,
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              tex3,
              style: pro2Text,
            ),
            Row(
              children: [
                Icon(
                  icon1,
                  color: Colors.white70,
                  size: 18,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  tex4,
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 18,
                  ),
                ),
                Expanded(child: Container()),
                IconButton(
                  onPressed: () {},
                  icon: Icon(icon2, color: Colors.white70),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Color(0xff252525),
        title: Text("Projects"),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            width: MediaQuery.of(context).size.width * 0.9,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                myProject("Flutter", "Click 2 Code", "An online compiler", "10",
                    Icons.star, FontAwesomeIcons.github),
                myProject("Java", "Dot Epid", "App for covid 19", "8",
                    Icons.star, FontAwesomeIcons.github),
                myProject("Python", "Face Detection", "Attendance using face detection", "8",
                    Icons.star, FontAwesomeIcons.github),
                myProject("GetX", "Blood Pressure", "Detection blood pressure", "7",
                    Icons.star, FontAwesomeIcons.github),
                myProject("Flutter Flow", "Drags 2 Code", "drags images to get code", "9",
                    Icons.star, FontAwesomeIcons.github),
                myProject("Web", "Stack Develop", "Using HTML & CSS", "10",
                    Icons.star, FontAwesomeIcons.github),
                myProject("C++", "Programming Code", "Basic information of C++", "10",
                    Icons.star, FontAwesomeIcons.github),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
