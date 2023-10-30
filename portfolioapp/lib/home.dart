import 'package:flutter/material.dart';
import 'package:portfolioapp/Card.dart';
import 'package:portfolioapp/constant.dart';
import 'package:portfolioapp/data.dart';
import 'package:wtf_sliding_sheet/wtf_sliding_sheet.dart';

class MyHome extends StatefulWidget {
  const MyHome({Key? key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: PopupMenuButton(
          icon: Icon(Icons.menu),
          itemBuilder: (context)=>[
            PopupMenuItem(

                child: TextButton(onPressed: () {
                  Navigator.pushNamed(context, 'project');
                },
            child: Text("Projects",style: TextStyle(color: Colors.black),),)),
            PopupMenuItem(child: TextButton(onPressed: () {
              Navigator.pushNamed(context, 'about');

            },
              child: Text("About Me", style: TextStyle(color: Colors.black),),))

          ],
        ),
        backgroundColor: Colors.transparent,
      ),
      body: SlidingSheet(
        elevation: 8,
        cornerRadius: 40,
        snapSpec: const SnapSpec(
          snap: true,
          snappings: [0.38, 0.7, 1.0],
          positioning: SnapPositioning.relativeToAvailableSpace,
        ),
        body: Container(
          child: Stack(
            children: [
              Container(
                padding: EdgeInsets.only(top: 120),
                child: Column(
                  children: [
                    Center(
                      child: CircleAvatar(
                        radius: 100,
                        backgroundImage: AssetImage("images/4.jpg"),
                      ),

                    ),
                    SizedBox(
                      height: 20,
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

                    Text("Android App Developer",style: SubMainText,)

                  ],
                ),
              )
            ],
          ),
        ),
        builder: (context, state) {
          return Container(
              height: 500,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MyData(),
                  Container(
                      padding: EdgeInsets.only(left: 10, top: 10),
                      child: Text(
                        "Specialized In",
                        style: bigText,
                      )),
                  MyCard(),
                ],
              ));
        },
      ),
    );
  }
}
