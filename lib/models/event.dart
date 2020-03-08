import 'package:flutter/material.dart';

class Event {
  String title;
  DateTime dateTime;
  String description;

  Event({
    @required this.title,
    @required this.dateTime,
    @required this.description,
  });
}
