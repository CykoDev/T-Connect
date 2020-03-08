import 'package:flutter/material.dart';

import '../widgets/main_drawer.dart';

class UsersScreen extends StatelessWidget {
  static String routeName = '/users';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Users'),
      ),
      body: Center(
        child: Text('Users will be shown here'),
      ),
      drawer: MainDrawer(),
    );
  }
}
