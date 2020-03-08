import 'package:flutter/material.dart';
import 'screens/events_screen.dart';
import 'screens/users_screen.dart';
import 'screens/event_edit_screen.dart';
import 'screens/event_screen.dart';
import 'screens/form_fill_screen.dart';
import 'screens/form_responses_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: EventsScreen(),
      routes: {
        UsersScreen.routeName: (ctx) => UsersScreen(),
        EventsScreen.routeName: (ctx) => EventsScreen(),
        EventEditScreen.routeName: (ctx) => EventEditScreen(),
        EventScreen.routeName: (ctx) => EventScreen(),
        FormFillScreen.routeName: (ctx) => FormFillScreen(),
        FormResponsesScreen.routeName: (ctx) => FormResponsesScreen(),
      },
    );
  }
}
