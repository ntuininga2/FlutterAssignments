// ignore_for_file: use_key_in_widget_constructors, todo

import 'package:flutter/material.dart';
import 'dart:math' as math;

//https://medium.com/flutter-community/flutter-layout-cheat-sheet-5363348d037e

//This app makes use of the Row, Column,
//Expanded, Padding, Transform, Container,
//BoxDecoration, BoxShape, Colors,
//Border, Center, Align, Alignment,
//EdgeInsets, Text, and TextStyle Widgets
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //first level widget of Material Design
      home: Scaffold(
        //default route
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: const Text("App1 - UI Layout"),
          backgroundColor: Colors.blue,
        ),
        body: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.max,
          children: [
            //TODO: Put your code here to complete this app.
            Column(
              children: [
                Container1(),
                Container2(),
              ],
            ),
            Column(
              children: [
                Container3(),
                Container4()
              ],
            ),
            Column(
              children: [
                Container5(),
                Container6()
              ],
            )
          ],
        ),
      ),
    );
  }
}


class Container1 extends StatelessWidget {
  const Container1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      width: 100.0,
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        color: Colors.orange,
        border: Border.all(
          width: 3,
          color: Colors.black
        )
      ),
      child: Center(child: Text('Container 1')),
    );
  }
}

class Container2 extends StatelessWidget {
  const Container2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: math.pi / 4,
      child: Container(
        height: 100.0,
        width: 100.0,
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          color: Colors.white,
        ),
        child: Center(child: Text('Container 2')),
      ),
    );
  }
}

class Container3 extends StatelessWidget {
  const Container3({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          width: 100.0,
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            color: Colors.yellow,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text('Container 3'),
            ],
          ),
        ),
      ),
    );
  }
}

class Container4 extends StatelessWidget {
  const Container4({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          width: 100.0,
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            color: Colors.blue,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text('Container 4'),
            ],
          ),
        ),
      ),
    );
  }
}

class Container5 extends StatelessWidget {
  const Container5({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: 100.0,
        height: 100.0,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.black,
          border: Border.all(
            width: 3,
            color: Colors.white
          )
        ),
        child: Center(child: Text('Container 5', style: TextStyle(color: Colors.white),)),
      ),
    );
  }
}

class Container6 extends StatelessWidget {
  const Container6({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.0,
      height: 200.0,
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        color: Colors.red,
      ),
      child: Text('Con 6', style: TextStyle(fontSize: 30),),
    );
  }
}
