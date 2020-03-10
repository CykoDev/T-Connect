import 'package:flutter/material.dart';

import '../../widgets/form_response.dart';

class FormResponsesScreen extends StatelessWidget {
  static String routeName = '/formresponses';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ACM Connect'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.open_in_new),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(20),
            child: Text(
              'Form Responses',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
          Expanded(
            child: Container(
              child: ListView(
                children: <Widget>[
                  SizedBox(
                    height: 10,
                  ),
                  FormResponse(),
                  FormResponse(),
                  FormResponse(),
                  FormResponse(),
                  FormResponse(),
                  FormResponse(),
                  FormResponse(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
