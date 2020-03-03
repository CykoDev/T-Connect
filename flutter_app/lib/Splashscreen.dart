import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'dart:async';

import 'package:flutter_app/Homescreen.dart';
import 'package:flutter_app/Signup_In%20Option.dart';

void main() =>
    runApp(new MaterialApp(
      theme:
      ThemeData(primaryColor: Colors.blue, accentColor: Colors.redAccent),
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    )
    );

class SplashScreen extends StatefulWidget {
  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {

  Future navigateToSignUp_In(context) async {
    print("Checking");
    Navigator.push(context, MaterialPageRoute(builder: (context) => Options()));
  }
  @override
  void initState() {
    super.initState();

    Timer(Duration(seconds: 6), () => navigateToSignUp_In(context));
  }

  Widget build(BuildContext context) {
    Size size = MediaQuery
        .of(context)
        .size;
    return Scaffold(
        body: Stack(children: <Widget>[
          Image.asset(
            'images/edit.jpg',
            width: size.width,
            height: size.height,
            fit: BoxFit.fill,),

          Opacity(opacity: 0.4,
              child: Container(
                decoration: BoxDecoration(color: Colors.blueGrey),)
          ),
          Align(
              alignment: FractionalOffset(0.5, 0.2),
              child: Opacity(opacity: 1,

                  child: CircleAvatar(
                      backgroundColor: Colors.white54, radius: 60.0,
                      child: Icon(Icons.desktop_mac, size: 72,)
                  )
              )
          ),

          Align(alignment: FractionalOffset(0.5, 0.35),
            child: Opacity(opacity: 1,
                child: Text("Random App Name",
                    style: TextStyle(

                        fontSize: 25.0,
                        color: Colors.white)
                )
            ),
          ),
          Align(alignment: FractionalOffset(0.5, 0.7),
            child: Opacity(opacity: 1,
                child: CircularProgressIndicator()
            ),
          ),


        ]
        )
    );
  }
}
