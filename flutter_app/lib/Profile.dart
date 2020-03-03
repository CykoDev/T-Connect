import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
//
//void main() => runApp(MyApp());
//
////class MyApp extends StatelessWidget {
////  // This widget is the root of your application.
////  @override
////  Widget build(BuildContext context) {
////    return MaterialApp(
////      title: 'My App',
////      debugShowCheckedModeBanner: false,
////      color: Colors.blueAccent,
////      home: User_Profile(),
////    );
////  }
////}

class User_Profile extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('My Profile',
              style: TextStyle(
                color: Colors.black,
              )),
          backgroundColor: Colors.white70,
        ),
        body: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('images/op4.jpg'), fit: BoxFit.cover)),

              child:Column( children:<Widget>[
                Container(
                    padding: EdgeInsets.only(left:28,top:15),
                    child:CircleAvatar(
                        backgroundColor: Colors.white60, radius: 68.0,

                        child: Icon(Icons.supervised_user_circle, size: 80))),

                Container(child:Text("Name:", style:TextStyle(fontSize:16,fontWeight: FontWeight.bold,color: Colors.white60)), alignment: FractionalOffset(0.05,0.9),padding: EdgeInsets.only(top:30),),
                Container(child:TextField(),padding: EdgeInsets.only(left:50,right:50),),
              Container(child:Text("Status:", style:TextStyle(fontSize:16,fontWeight: FontWeight.bold,color: Colors.white60)), alignment: FractionalOffset(0.05,0.9),padding: EdgeInsets.only(top:15),),
                Container(child:TextField(),padding: EdgeInsets.only(left:50,right:50),),
              Container(child:Text("Account Approval", style:TextStyle(fontSize:16,fontWeight: FontWeight.bold,color: Colors.white60)), alignment: FractionalOffset(0.05,0.9),padding: EdgeInsets.only(top:15),),
                Container(child:TextField(),padding: EdgeInsets.only(left:50,right:50),),
              Container(child:Text("Date Joined:", style:TextStyle(fontSize:16,fontWeight: FontWeight.bold,color: Colors.white60)), alignment: FractionalOffset(0.05,0.9),padding: EdgeInsets.only(top:15),),
                Container(child:TextField(),padding: EdgeInsets.only(left:50,right:50),),
              Container(child:Text("Team/Position:", style:TextStyle(fontSize:16,fontWeight: FontWeight.bold,color: Colors.white60)),alignment: FractionalOffset(0.05,0.9),padding: EdgeInsets.only(top:15),),
                Container(child:TextField(),padding: EdgeInsets.only(left:50,right:50),),

              Container(child:Text("Email:", style:TextStyle(fontSize:16,fontWeight: FontWeight.bold,color: Colors.white60)),alignment: FractionalOffset(0.05,0.9),padding: EdgeInsets.only(top:15),),
              Container(child:TextFormField(initialValue: " ",onEditingComplete:() { print("Saved");},),width:400,padding: EdgeInsets.only(left:50,right:50)),

              Container(child:Text("Phone Number:", style:TextStyle(fontSize:16,fontWeight: FontWeight.bold,color: Colors.white60)),alignment: FractionalOffset(0.05,0.2)),
              Container(child:TextFormField(initialValue: " ",onEditingComplete:() { print("Saved");},),width:400,padding: EdgeInsets.only(left:50,right:50,bottom:5)),

              ])

            ));
  }
}
