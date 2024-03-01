import 'package:flutter/material.dart';

import 'birthday_detail_page.dart';

var mystyle = TextStyle(fontSize: 25);
Color appbarcolor = Colors.deepOrange;

class Birthdaywhiez extends StatelessWidget {
  List wishez = [
    "Eat lobster in Maine",
    "Stand up for myself",
    "Improv4 me & others",
    "Something I observed about this exercise is that how it feels will depend on what’s going on in your own life. I think had I done this exercise a year ago I would’ve felt more jovial and inspired by the exercise and had 1,000 wishes to record. The timing of when I did it was immediately following a series of chaotic events during my summer and fall, so I felt a bit beat up and honestly, had lost sight of a lot of my vision for my life. That feeling inside of me was part of my inspiration to do this exercise in the first place. To reignite the flame and re-inspire the many things I want to experience in life.",
    "Meet Tina Fey"
  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
          backgroundColor: appbarcolor,
          title: Text('Birthday whishez'),
          centerTitle: true,
        ),
        body: ListView(
          scrollDirection: Axis.vertical,
          children:  wishez
                .map(
                  (e) => InkWell(
                    onTap: (){
                      Navigator.push(
                          context,MaterialPageRoute(builder: (context){
                        return Birthdaydetail(message:e,);
                      }));
                      print(e);
                    },
    child:Card(
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          e.toString(),
                          style: mystyle
                        ),
                      ),
                    ),

                ),
          )
                .toList(),
          ),
        );
  }
}
