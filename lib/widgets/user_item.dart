import 'package:flutter/material.dart';

class UserItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Card(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                children: <Widget>[
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
                        'User Name',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        'Admin',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        IconButton(
                          icon: Icon(Icons.edit),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Text('Approval: Approved'),
            ],
          ),
        ),
      ),
    );
  }
}