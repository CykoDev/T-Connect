import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

class Event {
  String id;
  String title;
  String dateTime;
  String imageUrl;
  String description;

  Event({
    @required this.title,
    @required this.dateTime,
    @required this.imageUrl,
    @required this.description,
  });

  Event.fromSnapshot(DataSnapshot snapshot) {
    id = snapshot.key;
    title = snapshot.value['title'];
    dateTime = snapshot.value['date'];
    imageUrl = snapshot.value['imageUrl'];
    description = snapshot.value['description'];
  }

  toJson() {
    return {
      "title": title,
      "date": dateTime,
      "imageUrl": imageUrl,
      "description": description,
    };
  }
}
