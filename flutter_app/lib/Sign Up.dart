import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'dart:async';

import 'package:flutter_app/Homescreen.dart';
import 'package:flutter_app/Sign%20In.dart';

//void main() =>
//    runApp(new MaterialApp(
//      theme:
//      ThemeData(primaryColor: Colors.blue, accentColor: Colors.redAccent),
//      debugShowCheckedModeBanner: false,
//      home: SignUp(),
//    )
//    );

class SignUp extends StatefulWidget {
  @override
  SignUpFormState createState() {
    return SignUpFormState();
  }
}

// Define a corresponding State class.
// This class holds data related to the form.
class SignUpFormState extends State<SignUp> {


  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery
        .of(context)
        .size;

    // Build a Form widget using the _formKey created above.
    return Scaffold(
      resizeToAvoidBottomPadding: true,
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
              alignment: FractionalOffset(0.5, 0.120),
              child: Opacity(opacity: 1,

                  child: CircleAvatar(child: Icon(
                    Icons.desktop_mac, size: 72, color: Colors.white,),
                    radius: 60,
                    backgroundColor: Colors.white24,)
              )
          ),
          Form(
            key: _formKey,
            child: SingleChildScrollView(
            child: Column(
                children: <Widget>[
                  Container(padding: EdgeInsets.only(
                      top:(size.height*0.26),left: 20, right: 20), width: 400,
                    child: Opacity(opacity: 1,
                        child: Text("Username:", style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14.0,
                          color: Colors.white,))
                    ),
                  ),
                  Container(padding: EdgeInsets.only(
                       left: 50, right: 20), width: 350,
                    child: Opacity(opacity: 1,
                        child: TextFormField(onEditingComplete: () {
                          print("Implementation of checking");
                        },validator: (value) {
                          if (value.isEmpty) {
                            return 'Please enter some text';
                          }
                          return null;
                        },
                            cursorColor: Colors.white12,
                            style: TextStyle(color: Colors.white24))
                    ),
                  ),
                  Container(padding: EdgeInsets.only(
                      top:20,left: 20, right: 20), width: 400,
                    child: Opacity(opacity: 1,
                        child: Text("Email", style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14.0,
                          color: Colors.white,))
                    ),
                  ),

                  Container(padding: EdgeInsets.only(
                      left: 50, right: 20), width: 350,
                    child: Opacity(opacity: 1,
                        child: TextFormField(onEditingComplete: () {
                          print("Implementation of checking");
                        },
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'Please enter some text';
                            }

                            return null;
                          },
                          cursorColor: Colors.white12,
                          style: TextStyle(color: Colors.white24),)
                    ),
                  ),
                  Container(padding: EdgeInsets.only(
                      top:20,left: 20, right: 20), width: 400,
                    child: Opacity(opacity: 1,
                        child: Text("Password:", style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14.0,
                          color: Colors.white,))
                    ),
                  ),

                  Container(padding: EdgeInsets.only(
                      left: 50, right: 20), width: 350,
                    child: Opacity(opacity: 1,
                        child: TextFormField(onEditingComplete: () {
                          print("Implementation of checking");
                        },
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'Please enter some text';
                            }
                            if (value.length < 8){ return "Password must be atleast 8 characters long";}

                            return null;
                          },
                          cursorColor: Colors.white12,
                          style: TextStyle(color: Colors.white24),)
                    ),
                  ),
                  Container(padding: EdgeInsets.only(
                      top:20,left: 20, right: 20), width: 400,
                    child: Opacity(opacity: 1,
                        child: Text("Contact No:", style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14.0,
                          color: Colors.white,))
                    ),
                  ),

                  Container(padding: EdgeInsets.only(
                      left: 50, right: 20), width: 350,
                    child: Opacity(opacity: 1,
                        child: TextFormField(
                          onEditingComplete: () {
                            print("Implementation of checking");
                          },

                          validator: (value) {
                            if (value.isEmpty) {
                              return 'Please enter some text';
                            }
                            return null;
                          },
                          cursorColor: Colors.white12,
                          style: TextStyle(color: Colors.white24),)
                    ),
                  ),
                  Container(padding: EdgeInsets.only(
                      top:20,left: 20, right: 20), width: 400,
                    child: Opacity(opacity: 1,
                        child: Text("Team:", style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14.0,
                          color: Colors.white,))
                    ),
                  ),

                  Container(padding: EdgeInsets.only(
                      left: 50, right: 20), width: 350,
                    child: Opacity(opacity: 1,
                        child: TextFormField(
                          onEditingComplete: () {
                            print("Implementation of checking");
                          },

                          validator: (value) {
                            if (value.isEmpty) {
                              return 'Please enter some text';
                            }
                            return null;
                          },
                          cursorColor: Colors.white12,
                          style: TextStyle(color: Colors.white24),)
                    ),
                  ),
                  Container(padding: EdgeInsets.only(
                      top:20,left: 20, right: 20), width: 400,
                    child: Opacity(opacity: 1,
                        child: Text("Position:", style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14.0,
                          color: Colors.white,))
                    ),
                  ),
                    Container(padding: EdgeInsets.only(
                    left: 50, right: 20), width: 350,
                    child: Opacity(opacity: 1,
                    child: DropdownButton( ))),

                  Container(padding: EdgeInsets.only(
                      left: 50, right: 20), width: 350,
                    child: Opacity(opacity: 1,
                        child: TextFormField(
                          onEditingComplete: () {
                            print("Implementation of checking");
                          },

                          validator: (value) {
                            if (value.isEmpty) {
                              return 'Please enter some text';
                            }
                            return null;
                          },
                          cursorColor: Colors.white12,
                          style: TextStyle(color: Colors.white24),)
                    ),
                  ),
                  Container(padding: EdgeInsets.only(
                      top:23,left: 20, right: 20), width: 400,
                    child: Opacity(opacity: 1,
                        child: RaisedButton(color: Colors.white24,
                            elevation: 6.0,
                            onPressed: () {
                              // Validate returns true if the form is valid, otherwise false.
                              if (_formKey.currentState.validate()) {

                               //Alert Dialog bx implementation plus saving of data
                                print("Processing");
                                navigateToHome(context);
                            }},
                            child: Text("Sign Up",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.0,
                                  color: Colors.white,)
                            ), )
                    ),
                  ),
                  // Add TextFormFields and RaisedButton here.
                ]
            )

        ))
        ])
    );
  }
}
