import 'package:flutter/material.dart';

import '../widgets/event_item.dart';
import '../widgets/main_drawer.dart';

import '../screens/event_edit_screen.dart';

import '../models/event.dart';

class EventsScreen extends StatelessWidget {
  static String routeName = '/events';

  final List<Event> events = [
    Event(
      id: '0',
      title: 'Event1',
      dateTime: 'DateTime(2020)',
      imageUrl:
          'https://cdn.pixabay.com/photo/2016/10/02/22/17/red-t-shirt-1710578_1280.jpg',
      description: 'description',
    ),
    Event(
      id: '1',
      title: 'Event2',
      dateTime: 'DateTime(2020)',
      imageUrl:
          'https://cdn.pixabay.com/photo/2016/10/02/22/17/red-t-shirt-1710578_1280.jpg',
      description: 'description',
    ),
    Event(
      id: '2',
      title: 'Event3',
      dateTime: 'DateTime(2020)',
      imageUrl:
          'https://cdn.pixabay.com/photo/2016/10/02/22/17/red-t-shirt-1710578_1280.jpg',
      description: 'description',
    ),
    Event(
      id: '3',
      title: 'Event4',
      dateTime: 'DateTime(2020)',
      imageUrl:
          'https://cdn.pixabay.com/photo/2016/10/02/22/17/red-t-shirt-1710578_1280.jpg',
      description: 'description',
    ),
  ];

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
              child: ListView.builder(
                itemBuilder: (ctx, index) => EventItem(
                  events[index].id,
                  events[index].title,
                  events[index].imageUrl,
                  events[index].dateTime,
                  events[index].description,
                ),
                itemCount: events.length,
              ),
            ),
          ),
        ],
      ),
      drawer: MainDrawer(),
      floatingActionButton: FloatingActionButton(
        onPressed: () =>
            Navigator.of(context).pushNamed(EventEditScreen.routeName),
        child: Icon(Icons.add),
      ),
    );
  }
}
