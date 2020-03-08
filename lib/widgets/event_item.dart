import 'package:flutter/material.dart';

import '../screens/event_screen.dart';

class EventItem extends StatelessWidget {
  final String id;
  final String title;
  final String imageUrl;
  final String date;
  final String description;

  EventItem(this.id, this.title, this.imageUrl, this.date, this.description);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.of(context).pushNamed(
        EventScreen.routeName,
        arguments: {
          'title': title,
          'date': date,
          'imageUrl': imageUrl,
          'description': description,
        },
      ),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text(title),
                    Text(description),
                  ],
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(10),
                  child: Image.network(
                    imageUrl,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
