import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'dart:async';

import 'package:flutter_app/Homescreen.dart';

//void main() =>
//    runApp(new MaterialApp(
//      theme:
//      ThemeData(primaryColor: Colors.blue, accentColor: Colors.redAccent),
//      debugShowCheckedModeBanner: false,
//      home: SplashScreen(),
//    )
//    );

class SignIn extends StatefulWidget {
  @override
  SignInState createState() => SignInState();
}

class SignInState extends State<SignIn> {
  onDoneLoading() async {
    Navigator.of(context).pop(context);
    Navigator.of(context).push(
        MaterialPageRoute(builder: (context) => GridLayout()));
  }



  Widget build(BuildContext context) {
    Size size = MediaQuery
        .of(context)
        .size;
    return Scaffold(
        body: Stack(children: <Widget>[
          Image.asset(
            'images/bothh.jpg',
            width: size.width,
            height: size.height,
            fit: BoxFit.fill,),

          Opacity(opacity: 0.4,
              child: Container(
                decoration: BoxDecoration(color: Colors.blueGrey),)
          ),
          Align(
              alignment: FractionalOffset(0.5, 0.182),
              child: Opacity(opacity: 1,

                  child: CircleAvatar(child:Icon(Icons.desktop_mac, size: 72,color: Colors.white,), radius:60,backgroundColor:Colors.white24 ,)
              )
          ),
          Container(padding:EdgeInsets.only(top:(size.height*0.375),left:40,right:20),width:400,
            child: Opacity(opacity: 1,
                child: Text("Username:",style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14.0,
                  color: Colors.white,))
            ),
          ),
          Container(padding:EdgeInsets.only(top:(size.height*0.39),left:50,right:20),width:350,
            child: Opacity(opacity: 1,
                child:TextFormField(onEditingComplete: (){ print("Implementation of checking");},cursorColor: Colors.white12,style:TextStyle(color:Colors.white,fontWeight: FontWeight.bold))
            ),
          ),
          Container(padding:EdgeInsets.only(top:(size.height*0.47),left:40,right:20),width:400,
            child: Opacity(opacity: 1,
                child: Text("Password:",style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14.0,
                  color: Colors.white,))
            ),
          ),

          Container(padding:EdgeInsets.only(top:(size.height*0.48),left:50,right:20),width:350,
            child: Opacity(opacity: 1,
                child:TextFormField(onEditingComplete: (){ print("Implementation of checking");},cursorColor: Colors.white24,style:TextStyle(color:Colors.white24, fontWeight: FontWeight.bold),obscureText: true,)
            ),
          ),
          Container(padding:EdgeInsets.only(top:(size.height*0.7),left:20,right:20),width:400,
            child: Opacity(opacity: 1,
                child: RaisedButton(color:Colors.white24,elevation:6.0,onPressed: (){ navigateToHome(context);},child:Text("Sign In",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                      color: Colors.white,)
                ),)
            ),
          ),


        ]
        )
    );
  }
}
Future navigateToHome(context) async {
  print("Checking");
  Navigator.push(context, MaterialPageRoute(builder: (context) => GridLayout()));
}
