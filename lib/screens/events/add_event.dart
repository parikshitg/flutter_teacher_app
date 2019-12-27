import 'package:flutter/material.dart';

class AddEvent extends StatefulWidget {
  static final id = 'add_event';

  @override
  _AddEventState createState() => _AddEventState();
}

class _AddEventState extends State<AddEvent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Add Event',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          color: Colors.black,
          onPressed: () => Navigator.pop(context),
        ),
        actions: <Widget>[
          FlatButton(
            child: Text('save', style: TextStyle(color: Colors.black),),
            onPressed: () => print('save event'),
          ),
        ],
      ),
    );
  }
}
