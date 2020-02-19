

import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";


  void main() => runApp(MyApp());

  class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
  return MaterialApp(
  title: 'My App',
  debugShowCheckedModeBanner: false,
   color: Colors.blueAccent,

   
   home: BackgroundImage(),

  );
  }
  }

  class BackgroundImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
  Size size = MediaQuery.of(context).size;

  return Scaffold(


  body: Stack(
  children: <Widget>[


  Center(
  child: Opacity(
    opacity:0.8,
  child: new Image.asset(
  'images/sample.jpg',
  width: size.width,
  height: size.height,
  fit: BoxFit.fill,
  ),
  ),
  ),

  Center(
    child:Opacity(
      opacity: 1.0,

       child: Text("Hello Loser",
      style: TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 32.0,
      fontStyle: FontStyle.italic,
      color: Colors.white)),
  ),
  ),
  ],
  ),
  );
  }
  }
