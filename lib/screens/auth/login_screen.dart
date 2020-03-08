import 'package:flutter/material.dart';

import '../../widgets/main_drawer.dart';

class LoginScreen extends StatelessWidget {
  static String routeName = '/login';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () {},
          ),
        ],
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(20),
              child: Text(
                'Login',
                style: TextStyle(
                  fontSize: 40,
                ),
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(30),
                child: MyCustomForm(),
              ),
            ),
          ],
        ),
      ),
      drawer: MainDrawer(),
    );
  }
}

// Create a Form widget.
class MyCustomForm extends StatefulWidget {
  @override
  MyCustomFormState createState() {
    return MyCustomFormState();
  }
}

// Create a corresponding State class.
// This class holds data related to the form.
class MyCustomFormState extends State<MyCustomForm> {
  // Create a global key that uniquely identifies the Form widget
  // and allows validation of the form.
  //
  // Note: This is a GlobalKey<FormState>,
  // not a GlobalKey<MyCustomFormState>.
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey created above.
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
                    return 'Required fields cannot be empty';
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
                    return 'Required fields cannot be empty';
                  }
                  return null;
                },
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: RaisedButton(
                  onPressed: () {
                    // Validate returns true if the form is valid, or false
                    // otherwise.
                    if (_formKey.currentState.validate()) {
                      // If the form is valid, display a Snackbar.
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
