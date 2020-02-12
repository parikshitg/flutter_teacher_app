import 'package:flutter/material.dart';

class AddNote extends StatefulWidget {
  static final id = 'addnote_screen';

  @override
  _AddNoteState createState() => _AddNoteState();
}

class _AddNoteState extends State<AddNote> {
  final _formKey = GlobalKey<FormState>();

  String _note;

  _submit() {
    if (_formKey.currentState.validate()) {
      _formKey.currentState.save();

      print(_note); 
    }
  }

  @override
  Widget build(BuildContext context) {
    final _height = MediaQuery.of(context).size.height.toInt();

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Add Note',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
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
              _submit();
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Column(
            children: <Widget>[
              Form(
                key: _formKey,
                child: TextFormField(
                  maxLines: _height,
                  decoration:
                      InputDecoration.collapsed(hintText: 'write note here...'),
                  onSaved: (input) => _note = input,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
