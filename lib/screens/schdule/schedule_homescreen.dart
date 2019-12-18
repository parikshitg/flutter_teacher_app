import 'package:flutter/material.dart';

class ScheduleHomeScreen extends StatefulWidget {

  static final String id = 'schedule_homescreen';

  @override
  _ScheduleHomeScreenState createState() => _ScheduleHomeScreenState();
}

class _ScheduleHomeScreenState extends State<ScheduleHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("Schedule Home Screen"),),
    );
  }
}