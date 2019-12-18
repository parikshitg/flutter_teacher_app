import 'package:flutter/material.dart';

class AttendanceHomescreen extends StatefulWidget {

  static final String id = "attendance_homeScreen";

  @override
  _AttendanceHomescreenState createState() => _AttendanceHomescreenState();
}

class _AttendanceHomescreenState extends State<AttendanceHomescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("Attendance"),),
    );
  }
}