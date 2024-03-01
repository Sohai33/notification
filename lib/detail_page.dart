import 'package:flutter/material.dart';
import 'package:notification1/message.dart';

import 'package:notification1/reuseable/styles.dart';

class Detailpage extends StatelessWidget {
  late String message;

  // Use the named parameter 'message' from the constructor to initialize the field
  Detailpage({required Messages cat, required String message})
      : this.message = message;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: whisbar('detail'),
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Text('$message'),
          )
        ],
      ),
    );
  }
}
