import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";

//void main() => runApp(MyApp());

//class MyApp extends StatelessWidget {
//  // This widget is the root of your application.
//  @override
//  Widget build(BuildContext context) {
//    return MaterialApp(
//      title: 'My App',
//      debugShowCheckedModeBanner: false,
//      color: Colors.blueAccent,
//      home: News(),
//    );
//  }
//}

class News extends StatelessWidget {

  List<String> getItems(){ //Generating random items for testing
    var items= List<String>.generate(100, (counter) =>( "Random News $counter"));
    return items;}
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('News Feed',
              style: TextStyle(
                color: Colors.black,
              )),
          backgroundColor: Colors.white70,
        ),
        body: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('images/blue_b.jpg'), fit: BoxFit.cover)),
            child: ListView.builder( itemBuilder:(context, index) {
              return
                Padding(padding:EdgeInsets.only(top:5,bottom:5,left:6, right:7),child:Container( color:Colors.white24, child:ListTile(
                  leading: Icon(Icons.notifications_none),
                  title: Text(getItems()[index],style: TextStyle( fontWeight:FontWeight.bold,fontSize:18),),
                  subtitle: Text("Continue Reading..."),

                  onTap: (){ print("Tapped");},
                )));
            }
            )
    ));
  }
}
