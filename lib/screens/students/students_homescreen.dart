import 'package:flutter/material.dart';

import './add_student.dart';

class StudentsHomescreen extends StatefulWidget {
  static final String id = 'students_homescreen';

  @override
  _StudentsHomescreenState createState() => _StudentsHomescreenState();
}

class _StudentsHomescreenState extends State<StudentsHomescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Class - 5 C",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Colors.black,
          onPressed: () => Navigator.pop(context),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add),
            color: Colors.black,
            onPressed: () => Navigator.pushNamed(context, AddStudent.id),
          ),
        ],
      ),
      body: Column(
        children: <Widget>[
          Card(
            elevation: 5,
            margin: EdgeInsets.symmetric(
              vertical: 8,
              horizontal: 5,
            ),
            child: ListTile(
              leading: CircleAvatar(
                radius: 30,
                child: Padding(
                  padding: EdgeInsets.all(6),
                ),
                backgroundColor: Colors.grey,
              ),
              title: Text("Student Name"),
              subtitle: Text(
                "s/o Students Fathers Name",
              ),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  IconButton(
                    icon: Icon(
                      Icons.phone,
                      color: Colors.black54,
                    ),
                    onPressed: () {
                      print('call button clicked');
                    },
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.mail,
                      color: Colors.black54,
                    ),
                    onPressed: () {
                      print('sms button clicked');
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
