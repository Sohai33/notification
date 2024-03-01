import 'dart:math';

import 'package:flutter/material.dart';

import 'package:notification1/detail_page.dart';
import 'package:notification1/message.dart';
import 'package:notification1/reuseable/styles.dart';


class categoryPage extends StatelessWidget {


  String  message;
  String cat;

  final _random = Random();
  categoryPage({required this.message,required this.cat});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: whisbar(cat),
      body:   ListView(
        children:
          messagedata.where((m) => m.category==cat).map((e) =>
              InkWell(
    onTap: (){
      Navigator.push(context, MaterialPageRoute(builder: (context){
        return  Detailpage( cat: e, message: e.message );

      }));


    },
    child:Card(
            color:Color.fromARGB(
                _random.nextInt(256),
                _random.nextInt(256),
                _random.nextInt(256),
                _random.nextInt(256)
            ),
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(e.message,style: mystyle,
              textAlign: TextAlign.center,
              ),
            ),
          )
          ),
          )
              .toList(),





    ));
  }


}
