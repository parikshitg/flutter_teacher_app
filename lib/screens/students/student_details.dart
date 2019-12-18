import 'package:flutter/material.dart';

class StudentDetails extends StatefulWidget {

  static final id = 'edit_student';

  @override
  _StudentDetailsState createState() => _StudentDetailsState();
}

class _StudentDetailsState extends State<StudentDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Edit Student', style: TextStyle(color:Colors.black),),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Colors.black,
          onPressed: () => Navigator.pop(context),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.edit),
            color: Colors.black,
            onPressed: () => Navigator.pushNamed(context, StudentDetails.id),
          )
        ],
      ),

    );
  }
}