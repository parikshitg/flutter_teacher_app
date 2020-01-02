import 'package:flutter/material.dart';

import 'package:flutter_teacher_app/screens/events/events_homescreen.dart';
import 'package:flutter_teacher_app/screens/schedule/schedule_homescreen.dart';
import 'package:flutter_teacher_app/screens/attendance/attendance_homescreen.dart';
import 'package:flutter_teacher_app/screens/students/students_homescreen.dart';
import 'package:flutter_teacher_app/screens/homeworks/homeworks_homescreen.dart';
import 'package:flutter_teacher_app/screens/notes/notes_homescreen.dart';

class HomeScreen extends StatefulWidget {
  static final String id = "home_screen";

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {

    final height = MediaQuery.of(context).size.height;


    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Teacher App",
          style: TextStyle(color: Colors.black),
        ),
        //elevation: 0.0,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.menu),
          color: Colors.black,
          onPressed: () => print("menu clicked"),
        ),
      ),
      body: Container(
        height: height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    IconButton(
                      icon: Icon(Icons.schedule),
                      iconSize: 70.0,
                      onPressed: () => Navigator.pushNamed(context, ScheduleHomeScreen.id),
                    ),
                    Text("Schedule"),
                  ],
                ),
                Column(
                  children: <Widget>[
                    IconButton(
                      icon: Icon(Icons.event_available),
                      iconSize: 70.0,
                      onPressed: () => Navigator.pushNamed(context, EventsHomeScreen.id),
                    ),
                    Text("Events"),
                  ],
                ),
              ],
            ),
            SizedBox(height: 20.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    IconButton(
                      icon: Icon(Icons.record_voice_over),
                      iconSize: 70.0,
                      onPressed: () => Navigator.pushNamed(context, AttendanceHomescreen.id),
                    ),
                    Text("Attendance"),
                  ],
                ),
                Column(
                  children: <Widget>[
                    IconButton(
                      icon: Icon(Icons.school),
                      iconSize: 70.0,
                      onPressed: () => Navigator.pushNamed(context, StudentsHomescreen.id),
                    ),
                    Text("Students"),
                  ],
                ),
              ],
            ),
            SizedBox(height: 20.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    IconButton(
                      icon: Icon(Icons.library_books),
                      iconSize: 70.0,
                      onPressed: () => Navigator.pushNamed(context, HomeworksHomescreen.id),
                    ),
                    Text("Home Work"),
                  ],
                ),
                Column(
                  children: <Widget>[
                    IconButton(
                      icon: Icon(Icons.note_add),
                      iconSize: 70.0,
                      onPressed: () => Navigator.pushNamed(context, NotesHomescreen.id),
                    ),
                    Text("Notes"),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
