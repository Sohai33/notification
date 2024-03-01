import 'dart:math';

import 'package:flutter/material.dart';
import 'package:notification1/category.dart';

import 'package:notification1/reuseable/styles.dart';

class Homepage extends StatelessWidget {
  Homepage({super.key});
  final _random = Random();
  List Asan = ['FATHER', 'Mother', 'Daughter', 'son'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Birthday'),
        backgroundColor: appbarcolor,
      ),
      body: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        children: Asan.map((e) => buildContainer(e, () {
              Navigator.push(context, MaterialPageRoute(builder: (_) {
                return categoryPage(
                  cat: e, message: 'e',
                );
              }));
            })).toList(),
      ),
    );
  }

  Padding buildContainer(String title, void Function() pressme) {
    return Padding(
        padding: EdgeInsets.all(8.0),
        child: InkWell(
            onTap: pressme,
            child: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Color.fromARGB(
                  _random.nextInt(256),
                  _random.nextInt(256),
                  _random.nextInt(256),
                  _random.nextInt(256),
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text(
                title,
                style: mystyle,
              ),
            )));
  }
}
