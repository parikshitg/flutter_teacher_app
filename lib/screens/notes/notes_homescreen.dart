import 'package:flutter/material.dart';

import 'addnote_screen.dart';

class NotesHomescreen extends StatefulWidget {

  static final String id = 'notes_homescreen.dart';

  @override
  _NotesHomescreenState createState() => _NotesHomescreenState();
}

class _NotesHomescreenState extends State<NotesHomescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notes', style: TextStyle(color: Colors.black,),),
        backgroundColor: Colors.white,
        leading: IconButton(icon: Icon(Icons.arrow_back_ios, color:Colors.black),onPressed: () => Navigator.pop(context),),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.add), color: Colors.black, onPressed: () => Navigator.pushNamed(context, AddNote.id),)
        ],
      ),
      backgroundColor: Colors.white,
      body: Center(child: Text("Notes"),),
    );
  }
}