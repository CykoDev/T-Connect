import 'package:flutter/material.dart';

import 'user_edit_screen.dart';

class UserInfoScreen extends StatelessWidget {
  static String routeName = 'userinfo';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User Info'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.edit),
            onPressed: () => Navigator.of(context).pushNamed(UserEditScreen.routeName),
          ),
        ],
      ),
      body: Container(
        child: Center(
          child: ListView(
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(20),
                child: Center(
                  child: Text(
                    'User Info',
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(20),
                child: Card(
                  child: Column(
                    children: <Widget>[
                      Image.network(
                        'https://recap-project.eu/wp-content/uploads/2017/02/default-user.jpg',
                        height: 150,
                        width: 150,
                        fit: BoxFit.fitWidth,
                      ),
                      Center(
                        child: Text(
                          'User Profile Image',
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(20),
                child: Column(
                  children: <Widget>[
                    Text(
                      'Secondary line text Lorem ipsum dolor sit amet',
                      style: TextStyle(
                        fontSize: 15,
                        height: 3.5,
                      ),
                    ),
                    Text(
                      'Secondary line text Lorem ipsum dolor sit amet',
                      style: TextStyle(
                        fontSize: 15,
                        height: 3.5,
                      ),
                    ),
                    Text(
                      'Secondary line text Lorem ipsum dolor sit amet',
                      style: TextStyle(
                        fontSize: 15,
                        height: 3.5,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
