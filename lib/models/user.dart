import 'package:flutter/material.dart';

class User {
  String name;
  DateTime dateOfBirth;
  String email;

  User({
    @required this.name,
    @required this.dateOfBirth,
    @required this.email,
  });
}
