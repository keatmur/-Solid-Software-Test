import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Solid Software',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home: MyHomePage(title: 'Solid Software'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Color color =   Colors.lightBlueAccent;

  randomColor(){
    setState(() {
      Random random =new Random();
      int r =  random.nextInt(255);
      int g=  random.nextInt(255);
      int b =  random.nextInt(255);
      color = Color.fromRGBO(r, g, b, 1);
    });
  }

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      backgroundColor: color,
      body:InkWell(
        child:Expanded(
           child:Center(
             child: Text("Hey there"),
    ),
        ),
        onTap: randomColor,
      ),
     );
  }
}


