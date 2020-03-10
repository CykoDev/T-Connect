import 'package:flutter/material.dart';

import '../../widgets/main_drawer.dart';
import '../../widgets/user_item.dart';

class UsersScreen extends StatelessWidget {
  static String routeName = '/users';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ACM Connect'),
      ),
      body: Container(
        child: ListView(
          children: <Widget>[
            SizedBox(
              height: 10,
            ),
            UserItem(),
            UserItem(),
            UserItem(),
            UserItem(),
            UserItem(),
            UserItem(),
            UserItem(),
            UserItem(),
          ],
        ),
      ),
      drawer: MainDrawer(),
    );
  }
}
