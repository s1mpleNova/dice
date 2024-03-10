import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text(
            'Dicee',
            style: TextStyle(
              color: Colors.white, // Custom text color
            ),
          ),
          backgroundColor: Color.fromRGBO(32, 22, 88, 3),
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int ldn = 1;
  int rdn = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: GestureDetector(
                  onTap: () {
                    setState(() {
                      ldn = Random().nextInt(6) + 1;
                    });
                  },
                  child: Image.asset('images/dice$ldn.png')),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: GestureDetector(
                  onTap: () {
                    setState(() {
                      rdn = Random().nextInt(6) + 1;
                    });
                  },
                  child: Image.asset('images/dice$rdn.png')),
            ),
          ),
        ],
      ),
    );
  }
}
