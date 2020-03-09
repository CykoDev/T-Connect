import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

class User {
  String id;
  String name;
  String dateOfBirth;
  String email;

  User({
    @required this.name,
    @required this.dateOfBirth,
    @required this.email,
  });

  User.fromSnapshot(DataSnapshot snapshot) {
    id = snapshot.key;
    name = snapshot.value['name'];
    dateOfBirth = snapshot.value['dob'];
    email = snapshot.value['email'];
  }

  toJson() {
    return {
      "name": name,
      "dob": dateOfBirth,
      "email": email,
    };
  }
}
