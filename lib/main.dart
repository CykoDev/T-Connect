import 'package:flutter/material.dart';
import 'screens/events_screen.dart';
import 'screens/users_screen.dart';
import 'screens/auth/login.dart';
import 'screens/auth/signup.dart';
import 'screens/user/info.dart';
import 'screens/user/edit.dart';

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
      },
    );
  }
}
