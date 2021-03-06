import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../models/student_model.dart';

class AttendanceHomescreen extends StatefulWidget {
  static final String id = "attendance_homeScreen";

  @override
  _AttendanceHomescreenState createState() => _AttendanceHomescreenState();
}

class _AttendanceHomescreenState extends State<AttendanceHomescreen> {
  var _selectedStudents = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Attendance',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          onPressed: () => Navigator.pop(context),
        ),
        actions: <Widget>[
          FlatButton(
            child: Text('save'),
            onPressed: () {
              print('Save CLicked');
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.fromLTRB(10.0, 5.0, 0.0, 5.0),
          child: Column(
            children: students.map(
              (tx) {
                return Container(
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  child: ListTile(
                    leading: CircleAvatar(
                      radius: 30,
                      child: Padding(
                        padding: EdgeInsets.all(6),
                      ),
                      backgroundColor: Colors.grey,
                    ),
                    title: Text(tx.name),
                    subtitle: Text('Roll No. ${tx.rollNo}'),
                    trailing: Checkbox(
                      value: tx.isPresent,
                      onChanged: (bool value) {
                        setState(() {
                          tx.isPresent = value;
                          if (tx.isPresent == true) {
                            _selectedStudents.add(tx.name);
                          }
                          print(_selectedStudents);
                        });
                      },
                    ),
                  ),
                );
              },
            ).toList(),
          ),
        ),
      ),
    );
  }
}
