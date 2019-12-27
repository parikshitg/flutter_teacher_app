import 'package:flutter/material.dart';

class AddSchedule extends StatefulWidget {
  static final id = 'add_schedule';

  @override
  _AddScheduleState createState() => _AddScheduleState();
}

class _AddScheduleState extends State<AddSchedule> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Add Schedule",
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
            child: Text('save', style: TextStyle(color: Colors.black,),),
            onPressed: () => print('save schedule'),
          ),
        ],
      ),
    );
  }
}
