import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';

import '../../widgets/event_item.dart';
import '../../widgets/main_drawer.dart';

import 'event_edit_screen.dart';

import '../../models/event.dart' as e;

class EventsScreen extends StatefulWidget {
  static String routeName = '/events';

  @override
  _EventsScreenState createState() => _EventsScreenState();
}

class _EventsScreenState extends State<EventsScreen> {
  final FirebaseDatabase _database = FirebaseDatabase.instance;
  
  var _onEventAddedSubscription;
  Query _eventsQuery;

  List<e.Event> eventsList = new List();

  final List<e.Event> events = [
    e.Event(
      title: 'Event1',
      dateTime: 'DateTime(2020)',
      imageUrl:
          'https://cdn.pixabay.com/photo/2016/10/02/22/17/red-t-shirt-1710578_1280.jpg',
      description: 'description',
    ),
    e.Event(
      title: 'Event2',
      dateTime: 'DateTime(2020)',
      imageUrl:
          'https://cdn.pixabay.com/photo/2016/10/02/22/17/red-t-shirt-1710578_1280.jpg',
      description: 'description',
    ),
    e.Event(
      title: 'Event3',
      dateTime: 'DateTime(2020)',
      imageUrl:
          'https://cdn.pixabay.com/photo/2016/10/02/22/17/red-t-shirt-1710578_1280.jpg',
      description: 'description',
    ),
    e.Event(
      title: 'Event4',
      dateTime: 'DateTime(2020)',
      imageUrl:
          'https://cdn.pixabay.com/photo/2016/10/02/22/17/red-t-shirt-1710578_1280.jpg',
      description: 'description',
    ),
  ];

  @override
  void initState() {
    _eventsQuery = _database.reference().child('events');
    _onEventAddedSubscription = _eventsQuery.onChildAdded.listen(_onEntryAdded);
    super.initState();
  }

  _onEntryAdded (Event event) {

  }

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
        // onPressed: _addEvent(),
        child: Icon(Icons.add),
      ),
    );
  }

  _addEvent() {
    e.Event event = new e.Event(title: "AnEvent", dateTime: "2020", imageUrl: "dotcom", description: "blah blah blah");
    _database.reference().child("events").push().set(event.toJson());
  }
}
