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
        title: Text("Class - 5 C", style: TextStyle(color: Colors.black),),
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
      body: Center(child: Text("STUDENTS"),),
    );
  }
}