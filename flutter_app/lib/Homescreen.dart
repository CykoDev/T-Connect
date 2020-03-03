import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:carousel_slider/carousel_slider.dart';
import 'package:carousel_widget/carousel_widget.dart';
import 'package:flutter_app/Profile.dart';
import 'package:flutter_app/News Feed.dart';



//
//void main() => runApp(MyApp());
//
//class MyApp extends StatelessWidget {
//  // This widget is the root of your application.
//  @override
//  Widget build(BuildContext context) {
//    return MaterialApp(
//      title: 'My App',
//      debugShowCheckedModeBanner: false,
//      color: Colors.redAccent,
//      home: GridLayout(),
//    );
//  }
//}

class GridLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
//    CarouselSlider(
//        height: 400.0,
//        items: ['images/news-icon-png-7.png',2,3,4,5].map((i) {
//          return Builder(
//            builder: (BuildContext context) {
//              return Container(
//                  width: MediaQuery.of(context).size.width,
//                  margin: EdgeInsets.symmetric(horizontal: 5.0),
//                  decoration: BoxDecoration(
//                      color: Colors.amber
//                  ),
//                  child: Text('text $i', style: TextStyle(fontSize: 16.0),)
//              );
//            },
//          );
//        }).toList(),);

        List<String> Images=['images/news-icon-png-7.png','images/group.png','images/calendar-icon-png-4117.png'];


        Widget getScreen(index) {
      return Container(
        color: Colors.yellowAccent,
        height: 50.0,
        margin: const EdgeInsets.fromLTRB(20.0, 90.0, 20.0, 0.0),
        child: Image.asset(
          Images.elementAt(index),width:100,
        ),
      );
    }
    Size size = MediaQuery.of(context).size;


    return Scaffold(
      appBar: AppBar(
        title: Text('Main Menu',
            style: TextStyle(
              color: Colors.black,
            )),
        backgroundColor: Colors.white70,
        actions: <Widget>[
          Padding(
              padding: EdgeInsets.all(10),
              child:IconButton( icon:Icon(
                Icons.search,
                color: Colors.black,
                size: 32,
              ),onPressed: (){ },
              )
          ),
        ],
      ),
      body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('images/gradient.jpg'), fit: BoxFit.cover)),
          child: Stack(children: <Widget>[
            new CarouselSlider(
                items: ['images/news-icon-png-7.png','images/group.png','images/calendar-icon-png-4117.png'].map((i) {
                  return new Builder(
                    builder: (BuildContext context) {
                      return new Container(
                          width: MediaQuery.of(context).size.width,
                          margin:EdgeInsets.only(left:8,right:8,top:10),
                          decoration: new BoxDecoration(
                              color: Colors.white24
                          ),
                        child:Image.asset('$i'
                          ,width:100,
                        ),//child: new Text('text $i', style: new TextStyle(fontSize: 16.0),)
                      );
                    },
                  );
                }).toList(),
                height: size.height*0.25,
                autoPlay: true
            ),
//            Container( child:Carousel(
//
//
//                    listViews: [
//                     Fragment(
//                       child: getScreen(0)),
//                    Fragment(
//                        child: getScreen(1)),
//                    Fragment(
//                        child: getScreen(2),color: Colors.redAccent,)
//                    ],
//                  ),width:size.width,padding: EdgeInsets.all(20),height: size.height*0.4,color: Colors.black,),
            Container(
                margin: EdgeInsets.only(top:(size.height)*0.27),
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        NewsFeed(),
                        Groups(),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Padding(
                            padding: EdgeInsets.only(left: 34, top: 5),
                            child: Text("News Feed",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white

                                ))),
                        Padding(
                            padding: EdgeInsets.only(left: 109, top: 5),
                            child: Text("Groups",
                                style: TextStyle(
                                  fontSize: 20,
                                    color: Colors.white

                                ))),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Profile(),
                        Events(),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Padding(
                            padding: EdgeInsets.only(left: 62, top: 5),
                            child: Text("Profile",
                                style: TextStyle(
                                  fontSize: 20,
                                    color: Colors.white

                                ))),
                        Padding(
                            padding: EdgeInsets.only(left: 127, top: 5),
                            child: Text("Events",
                                style: TextStyle(
                                  fontSize: 20,
                                    color: Colors.white

                                ))),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        MyButton(),
                        Other(),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Padding(
                            padding: EdgeInsets.only(left: 52, top: 5),
                            child: Text("Random",
                                style: TextStyle(
                                  fontSize: 20,
                                    color: Colors.white

                                ))),
                        Padding(
                            padding: EdgeInsets.only(left: 110, top: 5),
                            child: Text("Random",
                                style: TextStyle(
                                  fontSize: 20,
                                    color: Colors.white

                                ))),
                      ],
                    )
                  ],
                ))
          ])),
    );
  }
}

class Events extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // The InkWell wraps the custom flat button widget.
    return InkWell(
      // When the user taps the button, show a snackbar.
      onTap: () {
        Scaffold.of(context).showSnackBar(SnackBar(
          content: Text('Show Events'),
        ));
      },
      child: Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                blurRadius: 13.0,
                color: Colors.black.withOpacity(.5),
                offset: Offset(6.0, 7.0),
              ),
            ],
            borderRadius: BorderRadius.all(Radius.circular(20)),
            //shape: BoxShape.rectangle,
            //border: Border.all(),
            color: Colors.white,
          ),
          child: new Image.asset(
            'images/calendar-icon-png-4117.png',width:20,
          ),
          margin: EdgeInsets.only(left: 130, top: 25),
          width: 75,
          height: 80),
    );
  }
}

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // The InkWell wraps the custom flat button widget.
    return InkWell(
        // When the user taps the button, show a snackbar.
        onTap: () {
          navigateToProfile(context);
        },
        child: Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  blurRadius: 13.0,
                  color: Colors.black.withOpacity(.5),
                  offset: Offset(6.0, 7.0),
                ),
              ],
              borderRadius: BorderRadius.all(Radius.circular(20)),
              //shape: BoxShape.rectangle,
              //border: Border.all(),
              color: Colors.white,
            ),
            child: new Image.asset(
              'images/pro.png',
            ),
            margin: EdgeInsets.only(left: 50, top: 25),
            width: 75,
            height: 80));
  }
}

class Groups extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // The InkWell wraps the custom flat button widget.
    return InkWell(
        // When the user taps the button, show a snackbar.
        onTap: () {
          Scaffold.of(context).showSnackBar(SnackBar(
            content: Text('Show Groups'),
          ));
        },
        child: Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  blurRadius: 13.0,
                  color: Colors.black.withOpacity(.5),
                  offset: Offset(6.0, 7.0),
                ),
              ],
              borderRadius: BorderRadius.all(Radius.circular(20)),
              //shape: BoxShape.rectangle,
              //border: Border.all(),
              color: Colors.white,
            ),
            child: new Image.asset(
              'images/group.png',
            ),
            margin: EdgeInsets.only(left: 130, top: 25),
            width: 75,
            height: 80));
  }
}

class NewsFeed extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // The InkWell wraps the custom flat button widget.
    return InkWell(
        // When the user taps the button, show a snackbar.
        onTap: () {
         navigateToNewsFeed(context);
        },
        child: Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  blurRadius: 13.0,
                  color: Colors.black.withOpacity(.5),
                  offset: Offset(6.0, 7.0),
                ),
              ],
              borderRadius: BorderRadius.all(Radius.circular(20)),
              //shape: BoxShape.rectangle,
              //border: Border.all(),
              color: Colors.white,
            ),
            child: new Image.asset(
              'images/news-icon-png-7.png',
            ),
            margin: EdgeInsets.only(left: 50, top: 25),
            width: 75,
            height: 80));
  }
}

class MyButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // The InkWell wraps the custom flat button widget.
    return InkWell(
        // When the user taps the button, show a snackbar.
        onTap: () {
          Scaffold.of(context).showSnackBar(SnackBar(
            content: Text('Show News Feed'),
          ));
        },
        child: Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  blurRadius: 13.0,
                  color: Colors.black.withOpacity(.5),
                  offset: Offset(6.0, 7.0),
                ),
              ],
              borderRadius: BorderRadius.all(Radius.circular(20)),
              //shape: BoxShape.rectangle,
              //border: Border.all(),
              color: Colors.white,
            ),
            child: new Image.asset(
              'images/news-icon-png-7.png',
            ),
            margin: EdgeInsets.only(left: 50, top: 25),
            width: 75,
            height: 80));
  }
}

class Other extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // The InkWell wraps the custom flat button widget.
    return InkWell(
        // When the user taps the button, show a snackbar.
        onTap: () {
          Scaffold.of(context).showSnackBar(SnackBar(
            content: Text('Show News Feed'),
          ));
        },
        child: Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  blurRadius: 13.0,
                  color: Colors.black.withOpacity(.5),
                  offset: Offset(6.0, 7.0),
                ),
              ],
              borderRadius: BorderRadius.all(Radius.circular(20)),
              //shape: BoxShape.rectangle,
              //border: Border.all(),
              color: Colors.white,
            ),
            child: new Image.asset(
              'images/news-icon-png-7.png',
            ),
            margin: EdgeInsets.only(left: 130, top: 25),
            width: 75,
            height: 80));
  }
}

Future navigateToNewsFeed(context) async {
  print("Checking");
  Navigator.push(context, MaterialPageRoute(builder: (context) => News()));
}

Future navigateToProfile(context) async {
  print("Checking");
  Navigator.push(context, MaterialPageRoute(builder: (context) => User_Profile()));
}
//Future navigateTo(context) async {
//  print("Checking");
//  Navigator.push(context, MaterialPageRoute(builder: (context) => GridLayout()));
//}
//Future navigateToHomePage(context) async {
//  print("Checking");
//  Navigator.push(context, MaterialPageRoute(builder: (context) => GridLayout()));
//}
//Future navigateToHomePage(context) async {
//  print("Checking");
//  Navigator.push(context, MaterialPageRoute(builder: (context) => GridLayout()));
//}
//Future navigateToHomePage(context) async {
//  print("Checking");
//  Navigator.push(context, MaterialPageRoute(builder: (context) => GridLayout()));
//}
//Future navigateToHomePage(context) async {
//  print("Checking");
//  Navigator.push(context, MaterialPageRoute(builder: (context) => GridLayout()));
//}
//
