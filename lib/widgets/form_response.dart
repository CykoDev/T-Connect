import 'package:flutter/material.dart';

class FormResponse extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Card(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Row(
            children: <Widget>[
              SizedBox(
                width: 20,
              ),
              Container(
                child: CircleAvatar(
                  backgroundColor: Colors.grey,
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Two-line item',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    'Secondary text',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
