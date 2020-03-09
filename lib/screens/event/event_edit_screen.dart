import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';

import '../../models/event.dart' as e;

class EventEditScreen extends StatelessWidget {
  static String routeName = '/eventedit';

  final FirebaseDatabase _database = FirebaseDatabase.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ACM Connect'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.done),
            onPressed: () => _addEvent(context),
          ),
        ],
      ),
      body: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(20),
            child: Text(
              'Event',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
          Expanded(
            child: Container(
              child: ListView(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(20),
                    color: Colors.grey,
                    height: 200,
                  ),
                  Container(
                    child: Text('Event Header Image'),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'Hint text',
                      hintStyle: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'Hint text',
                      hintStyle: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'Hint text',
                      hintStyle: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'Multi-Line Text',
                    ),
                    keyboardType: TextInputType.multiline,
                    maxLines: 4,
                  ),
                ],
              ),
            ),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                RaisedButton(
                  onPressed: () {},
                  color: Colors.blue,
                  child: Text('EDIT FORM'),
                  textColor: Colors.white,
                ),
                SizedBox(
                  width: 10,
                ),
                RaisedButton(
                  onPressed: () => _addEvent(context),
                  color: Colors.blue,
                  child: Text('CREATE/EDIT'),
                  textColor: Colors.white,
                ),
                SizedBox(
                  width: 10,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  _addEvent(BuildContext context) {
    e.Event event = new e.Event(title: "AnEvent", dateTime: "2020", imageUrl: "dotcom", description: "blah blah blah");
    _database.reference().child("events").push().set(event.toJson());
    Navigator.pop(context);
  }
}
