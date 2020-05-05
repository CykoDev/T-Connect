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
  var _onEventChangedSubscription;
  Query _eventsQuery;

  List<e.Event> _eventsList = new List();

  @override
  void initState() {
    _eventsQuery = _database.reference().child('events');
    _onEventAddedSubscription = _eventsQuery.onChildAdded.listen(_onEntryAdded);
    _onEventChangedSubscription = _eventsQuery.onChildChanged.listen(_onEntryChanged);
    super.initState();
  }

  @override
  void dispose() {
    _onEventAddedSubscription.cancel();
    _onEventChangedSubscription.cancel();
    super.dispose();
  }

  _onEntryAdded(Event event) {
    setState(() {
      _eventsList.add(e.Event.fromSnapshot(event.snapshot));
    });
  }

  _onEntryChanged(Event event) {
    var oldEntry = _eventsList.singleWhere((entry) {
      return entry.id == event.snapshot.key;
    });
    setState(() {
      _eventsList[_eventsList.indexOf(oldEntry)] =
          e.Event.fromSnapshot(event.snapshot);
    });
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
                  _eventsList[index].id,
                  _eventsList[index].title,
                  _eventsList[index].imageUrl,
                  _eventsList[index].dateTime,
                  _eventsList[index].description,
                ),
                itemCount: _eventsList.length,
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
}
