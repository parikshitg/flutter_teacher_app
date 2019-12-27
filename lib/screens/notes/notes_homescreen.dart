import 'package:flutter/material.dart';

import '../../models/note_model.dart';

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
      body: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.fromLTRB(20.0,0.0,0.0,0.0),
                child: Column(
          children: notes.map((tx) {
            return Container(
                decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: Colors.grey,
                      ),
                    ),
                  ),
                child: ListTile(
                  //leading: SizedBox(width: 20.0,),
                  title: Text(tx.title, style: TextStyle(fontWeight: FontWeight.w600),),
                  subtitle: Text(tx.noteDate, style: TextStyle(color: Colors.grey, fontSize: 12.0),),
                ),
            );
          }).toList(),
        ),
              ),
      ),
    );
  }
}