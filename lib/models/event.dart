import 'package:flutter/material.dart';

class Event {
  String title;
  DateTime dateTime;
  String imageUrl;
  String description;

  Event({
    @required this.title,
    @required this.dateTime,
    @required this.imageUrl,
    @required this.description,
  });
}
