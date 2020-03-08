import 'package:flutter/material.dart';

class Event {
  String id;
  String title;
  String dateTime;
  String imageUrl;
  String description;

  Event({
    @required this.id,
    @required this.title,
    @required this.dateTime,
    @required this.imageUrl,
    @required this.description,
  });
}
