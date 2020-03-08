import 'package:flutter/material.dart';

import '../screens/user/users_screen.dart';
import '../screens/event/events_screen.dart';
import '../screens/auth/login_screen.dart';
import '../screens/auth/signup_screen.dart';

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Theme.of(context).scaffoldBackgroundColor,
        child: Column(
          children: <Widget>[
            Container(
              height: 150,
              width: double.infinity,
              color: Theme.of(context).primaryColor,
              padding: EdgeInsets.all(20),
              alignment: Alignment.centerLeft,
            ),
            ListTile(
              title: Text('Home'),
              onTap: () {
                Navigator.of(context)
                    .pushReplacementNamed(EventsScreen.routeName);
              },
            ),
            ListTile(
              title: Text('Users'),
              onTap: () {
                Navigator.of(context)
                    .pushReplacementNamed(UsersScreen.routeName);
              },
            ),
            ListTile(
              title: Text('Login'),
              onTap: () {
                Navigator.of(context)
                    .pushReplacementNamed(LoginScreen.routeName);
              },
            ),
            ListTile(
              title: Text('Signup'),
              onTap: () {
                Navigator.of(context).pushNamed(SignupScreen.routeName);
              },
            ),
            // ListTile(
            //   title: Text('Winning Prizes'),
            //   onTap: () {
            //     Navigator.of(context)
            //         .pushReplacementNamed(WinningPrizesScreen.routeName);
            //   },
            // ),
            // ListTile(
            //   title: Text('Modules'),
            //   onTap: () {
            //     Navigator.of(context)
            //         .pushReplacementNamed(ModulesScreen.routeName);
            //   },
            // ),
            // ListTile(
            //   title: Text('Contacts'),
            //   onTap: () {
            //     Navigator.of(context)
            //         .pushReplacementNamed(ContactsScreen.routeName);
            //   },
            // ),
            // ListTile(
            //   title: Text('SciRun'),
            //   onTap: () {
            //     Navigator.of(context)
            //         .pushNamed(ModuleGuidelinesScreen.routeName, arguments: {
            //       'id': 'm3',
            //       'title': 'Sci-Run',
            //       'logo': 'assets/images/scirun.png',
            //       'guidelines': 'assets/documents/Scirun.pdf',
            //       'hasApp': true,
            //     });
            //   },
            // ),
          ],
        ),
      ),
    );
  }
}
