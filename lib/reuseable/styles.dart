
import 'dart:math';

import 'package:flutter/material.dart';

var mystyle = TextStyle(fontSize: 25);
Color appbarcolor = Colors.deepOrange;



final _random = Random();
Color ramdomcolor= Color.fromARGB(
_random.nextInt(256),
_random.nextInt(256),
_random.nextInt(256),
_random.nextInt(256)
);

AppBar whisbar(String title) {
  return AppBar(
    centerTitle: true,
    backgroundColor: appbarcolor,
    title: Text(title),
  );
}