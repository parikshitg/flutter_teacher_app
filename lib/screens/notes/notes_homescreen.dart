import 'package:flutter/material.dart';

class NotesHomescreen extends StatefulWidget {
  @override
  _NotesHomescreenState createState() => _NotesHomescreenState();
}

class _NotesHomescreenState extends State<NotesHomescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("Notes"),),
    );
  }
}