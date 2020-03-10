import 'package:flutter/material.dart';
import 'screens/event/events_screen.dart';
import 'screens/user/users_screen.dart';
import 'screens/auth/login_screen.dart';
import 'screens/auth/signup_screen.dart';
import 'screens/user/user_info_screen.dart';
import 'screens/user/user_edit_screen.dart';
import 'screens/event/event_edit_screen.dart';
import 'screens/event/event_screen.dart';
import 'screens/form/form_fill_screen.dart';
import 'screens/form/form_responses_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: EventsScreen(),
      routes: {
        UsersScreen.routeName: (ctx) => UsersScreen(),
        EventsScreen.routeName: (ctx) => EventsScreen(),
        LoginScreen.routeName: (ctx) => LoginScreen(),
        SignupScreen.routeName: (ctx) => SignupScreen(),
        UserInfoScreen.routeName: (ctx) => UserInfoScreen(),
        UserEditScreen.routeName: (ctx) => UserEditScreen(),
        EventEditScreen.routeName: (ctx) => EventEditScreen(),
        EventScreen.routeName: (ctx) => EventScreen(),
        FormFillScreen.routeName: (ctx) => FormFillScreen(),
        FormResponsesScreen.routeName: (ctx) => FormResponsesScreen(),
      },
    );
  }
}
