import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class UserEditScreen extends StatefulWidget {
  static String routeName = '/useredit';

  @override
  _UserEditScreenState createState() => _UserEditScreenState();
}

class _UserEditScreenState extends State<UserEditScreen> {
  static String routeName = '/user-edit';

  File _image;

  Future getImage() async {
    var image = await ImagePicker.pickImage(source: ImageSource.camera);

    setState(() {
      _image = image;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Edit User'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.done),
            onPressed: () {},
          ),
        ],
      ),
      body: Container(
        child: Center(
          child: ListView(
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(20),
                child: Center(
                  child: Text(
                    'User Edit',
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(20),
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      children: <Widget>[
                        Center(
                          child: _image == null
                              ? Text('No image selected.')
                              : Image.file(
                                  _image,
                                  height: 120,
                                  width: 120,
                                  fit: BoxFit.fitWidth,
                                ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 16.0),
                          child: RaisedButton(
                            onPressed: getImage,
                            child: Text('Pick Image'),
                          ),
                        ),
                        Center(
                          child: Text(
                            'User Profile Image',
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(20),
                child: Column(
                  children: <Widget>[
                    MyCustomForm(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyCustomForm extends StatefulWidget {
  @override
  MyCustomFormState createState() {
    return MyCustomFormState();
  }
}

class MyCustomFormState extends State<MyCustomForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextFormField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Username',
                ),
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Username field cannot be empty';
                  }
                  return null;
                },
              ),
              TextFormField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'email',
                ),
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Email field cannot be empty';
                  }
                  return null;
                },
              ),
              TextFormField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Phone no.',
                ),
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Phone no. cannot be empty';
                  }
                  return null;
                },
              ),
              TextFormField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Team',
                ),
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Team field cannot be empty';
                  }
                  return null;
                },
              ),
              TextFormField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Password',
                ),
                obscureText: true,
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Password cannot be empty';
                  }
                  return null;
                },
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: RaisedButton(
                  onPressed: () {
                    if (_formKey.currentState.validate()) {
                      Scaffold.of(context).showSnackBar(
                          SnackBar(content: Text('Processing Data')));
                    }
                  },
                  child: Text('Submit'),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
