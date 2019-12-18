import 'package:flutter/material.dart';

import './screens/students/add_student.dart';

import './screens/attendance/attendance_homescreen.dart';
import './screens/events/events_homescreen.dart';
import './screens/homeworks/homeworks_homescreen.dart';
import './screens/notes/notes_homescreen.dart';
import './screens/students/students_homescreen.dart';
import './screens/schdule/schedule_homescreen.dart';
import './screens/login_screen.dart';
import './screens/signup_screen.dart';
import './home_screen.dart';
import 'screens/students/student_details.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginScreen(),
      routes: {
        LoginScreen.id: (context) => LoginScreen(),
        SignupScreen.id: (context) => SignupScreen(),
        HomeScreen.id: (context) => HomeScreen(),
        ScheduleHomeScreen.id: (context) => ScheduleHomeScreen(),
        EventsHomeScreen.id: (context) => EventsHomeScreen(),
        AttendanceHomescreen.id: (context) => AttendanceHomescreen(),
        StudentsHomescreen.id: (context) => StudentsHomescreen(),
        HomeworksHomescreen.id: (context) => HomeworksHomescreen(),
        NotesHomescreen.id: (context) => NotesHomescreen(),
        AddStudent.id: (context) => AddStudent(),
        StudentDetails.id: (context) => StudentDetails(),
      },
    );
  }
}

