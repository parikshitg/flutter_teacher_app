import 'package:flutter/material.dart';

class AddNote extends StatefulWidget {
  static final id = 'addnote_screen';

  @override
  _AddNoteState createState() => _AddNoteState();
}

class _AddNoteState extends State<AddNote> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Add Note',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () => Navigator.pop(context),
        ),
        actions: <Widget>[
          FlatButton(
            child: Text(
              'save',
              style: TextStyle(color: Colors.black),
            ),
            onPressed: () {
              print('save note clicked');
            },
          ),
        ],
      ),
    );
  }
}
