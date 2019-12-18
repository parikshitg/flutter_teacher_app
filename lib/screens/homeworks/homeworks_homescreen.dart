import 'package:flutter/material.dart';

class HomeworksHomescreen extends StatefulWidget {

  static final String id = 'homework_homescreen';

  @override
  _HomeworksHomescreenState createState() => _HomeworksHomescreenState();
}

class _HomeworksHomescreenState extends State<HomeworksHomescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("Homeworks"),),
    );
  }
}