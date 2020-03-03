import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'dart:async';

import 'package:flutter_app/Homescreen.dart';
import 'package:flutter_app/Sign%20Up.dart';
import 'package:flutter_app/Sign In.dart';

//void main() =>
//    runApp(new MaterialApp(
//      theme:
//      ThemeData(primaryColor: Colors.blue, accentColor: Colors.redAccent),
//      debugShowCheckedModeBanner: false,
//      home: SplashScreen(),
//    )
//    );

class Options extends StatefulWidget {
  @override
  OptionsState createState() => OptionsState();
}

class OptionsState extends State<Options> {
  onDoneLoading() async {
    Navigator.of(context).pop(context);
    Navigator.of(context).push(
        MaterialPageRoute(builder: (context) => GridLayout()));
  }

  @override
  void initState() {
    super.initState();

    Timer(Duration(seconds: 10), () => print("Uff"));
  }

  Widget build(BuildContext context) {
    Size size = MediaQuery
        .of(context)
        .size;
    return Scaffold(
        body: Stack(children: <Widget>[
          Image.asset(
            'images/Option.jpg',
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

                  child: CircleAvatar(child:Icon(Icons.desktop_mac, size: 72,color: Colors.white,), radius:60,backgroundColor:Colors.white24 ,)
              )
          ),
          Container(padding:EdgeInsets.only(top:(size.height*0.6),left:20,right:20),width:400,
            child: Opacity(opacity: 1,
                child: RaisedButton(color:Colors.white24,elevation:6.0,onPressed: (){ navigateToSignUpPage(context);},child:Text("Sign Up",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                      color: Colors.white,)
                ),)
            ),
          ),


          Container(padding:EdgeInsets.only(top:(size.height*0.7),left:20,right:20),width:400,
            child: Opacity(opacity: 1,
                child: RaisedButton(color:Colors.white24,elevation:6.0,onPressed: (){navigateToSignInPage(context);},child:Text("Sign In",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                        color: Colors.white,)
                ))
            ),
          ),


        ]
        )
    );
  }
}
Future navigateToSignInPage(context) async {
  print("Checking");
  Navigator.push(context, MaterialPageRoute(builder: (context) => SignIn()));
}
Future navigateToSignUpPage(context) async {
  print("Checking");
  Navigator.push(context, MaterialPageRoute(builder: (context) => SignUp()));
}
