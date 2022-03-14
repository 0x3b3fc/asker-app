import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.deepPurple[800],
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        centerTitle: true,
        title: Text(
          'Ask Me Anything',
        ),
      ),
      body: Asker(),
    ),
    debugShowCheckedModeBanner: false,
  ));
}

class Asker extends StatefulWidget {
  @override
  State<Asker> createState() => _AskerState();
}

class _AskerState extends State<Asker> {
  int ballNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
              child: TextButton(
            onPressed: () {
              setState(() {
                ballNumber = Random().nextInt(5) + 1;
              });
            },
            child: Image.asset('images/ball$ballNumber.png'),
          )),
        ],
      ),
    );
  }
}
