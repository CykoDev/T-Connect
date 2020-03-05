import 'package:flutter/material.dart';

import '../widgets/event_item.dart';
import '../widgets/main_drawer.dart';

class EventsScreen extends StatelessWidget {
  static String routeName = '/events';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ACM Connect'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(20),
            child: Text(
              'Upcoming Events',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(10),
              child: Column(
                children: <Widget>[
                  EventItem(),
                  SizedBox(
                    height: 10,
                  ),
                  EventItem(),
                ],
              ),
            ),
          ),
        ],
      ),
      drawer: MainDrawer(),
    );
  }
}
