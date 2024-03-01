
import 'package:clipboard/clipboard.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:notification1/reuseable/styles.dart';





class Birthdaydetail extends StatelessWidget {
  late String message;
  Birthdaydetail({required this.message});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: appbarcolor,
        ),
        body: SingleChildScrollView(
            child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
                children: [
          Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 5,
                      offset: Offset(7, 7),
                    ),
                  ]),
              child: Padding(
                padding: EdgeInsets.all(14.0),
                child: Text(
                  '$message',
                  textAlign: TextAlign.justify,
                  style: mystyle,
                ),
              )
          ),
                  SizedBox(
                    height: 30,
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                          onPressed: (){
                            FlutterClipboard.copy(message);
                            Fluttertoast.showToast(msg: "Sucessfully copied $message");
                          },
                          icon: Icon(Icons.copy),
                      iconSize: 50,),
                      IconButton(
                        onPressed: (){
                          //Share.share(message);
                        },
                        icon: Icon(Icons.share),
                        iconSize: 50,),
                    ],
                  )

        ]))));
  }
}
