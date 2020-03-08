import 'package:flutter/material.dart';

import '../form/form_fill_screen.dart';
import '../form/form_responses_screen.dart';

class EventScreen extends StatelessWidget {
  static String routeName = '/event';

  @override
  Widget build(BuildContext context) {

    final routeArgs = ModalRoute.of(context).settings.arguments as Map<String, String>;
    final title = routeArgs['title'];
    final date = routeArgs['date'];
    final imageUrl = routeArgs['imageUrl'];
    final description = routeArgs['description'];

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
              title,
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
                    date,
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    description,
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
