import 'package:flutter/material.dart';

import '../../screens/form/form_fill_screen.dart';
import '../../screens/form/form_responses_screen.dart';

class EventScreen extends StatelessWidget {
  static String routeName = '/event';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ACM Connect'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.edit),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.bookmark),
            onPressed: () {},
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
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Text',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Text',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Text',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Multi-Line Text',
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
                  onPressed: () => Navigator.of(context).pushNamed(FormResponsesScreen.routeName),
                  color: Colors.blue,
                  child: Text('VIEW RESPONSES'),
                  textColor: Colors.white,
                ),
                SizedBox(
                  width: 10,
                ),
                RaisedButton(
                  onPressed: () => Navigator.of(context).pushNamed(FormFillScreen.routeName),
                  color: Colors.blue,
                  child: Text('FILL FORM'),
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
}
