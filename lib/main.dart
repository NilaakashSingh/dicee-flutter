import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.purple,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.purple,
        ),
        body: DiceDynamicPage(),
      ),
    ),
  );
}

class DiceDynamicPage extends StatefulWidget {
  const DiceDynamicPage({Key? key}) : super(key: key);

  @override
  _DiceDynamicPageState createState() => _DiceDynamicPageState();
}

class _DiceDynamicPageState extends State<DiceDynamicPage> {
  // Variables
  int leftDiceNumber = 5;
  int rightDiceNumber = 2;

  @override
  Widget build(BuildContext context) {

    // Body
    return Center(
      child: Row(
        children: [
          Expanded(
            // Flat Button is deprecated
            child: TextButton(
              onPressed: () {
                setState(() {
                  leftDiceNumber = Random().nextInt(6) + 1;
                });
                print('Left button got pressed');
              },
              child: Image.asset('images/dice$leftDiceNumber.png'),
            ),
          ),
          Expanded(
            // Flat Button is deprecated
            child: TextButton(
              onPressed: () {
                setState(() {
                  rightDiceNumber = Random().nextInt(6) + 1;
                });
                print('Right button got pressed');
              },
              child: Image.asset('images/dice$rightDiceNumber.png'),
            ),
          ),
        ],
      ),
    );
  }
}
