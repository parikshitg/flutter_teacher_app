import 'package:flutter/material.dart';

class AddHomework extends StatefulWidget {

  static final id = 'addhomework_screen';

  @override
  _AddHomeworkState createState() => _AddHomeworkState();
}

class _AddHomeworkState extends State<AddHomework> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Add Homework',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
        actions: <Widget>[
          FlatButton(
            child: Text(
              'save',
            ),
            textColor: Colors.black,
            onPressed: () {
              print('Save Clicked');
            },
          ),
        ],
      ),
    );
  }
}
