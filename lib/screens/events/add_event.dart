import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import './../../models/event_model.dart';

class AddEvent extends StatefulWidget {
  static final id = 'add_event';

  final Event event;

  AddEvent({this.event});

  @override
  _AddEventState createState() => _AddEventState();
}

class _AddEventState extends State<AddEvent> {
  final _formKey = GlobalKey<FormState>();

  TextEditingController _dateController = TextEditingController();

  var _dateFormat = DateFormat('dd-MM-yyyy');

  String _title = '';
  DateTime _eventDate;
  String _body = '';
  String _category = '';

  Future<Null> _andriodDatePicker(BuildContext context) async {
    final DateTime picked = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2018),
        lastDate: DateTime(2021));

    if (picked != null && picked != _eventDate) {
      setState(() {
        _eventDate = picked;
        print(_eventDate);
        _dateController.text = _dateFormat.format(picked);
      });
    }
  }

  //_submit form function
  _submit() {
    if (_formKey.currentState.validate()) {
      _formKey.currentState.save();

      Event event = Event(
        title: _title,
        eventDate: _eventDate,
        body: _body,
        category: _category,
      );

      print('event.name: ${event.title}');
      print('event.date: ${event.eventDate}');
      print('event.body: ${event.body}');
      print('event.category: ${event.category}');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Add Event",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
            ),
            onPressed: () => Navigator.pop(context),
          ),
          color: Colors.black,
          onPressed: () => Navigator.pop(context),
        ),
        actions: <Widget>[
          FlatButton(
            child: Text('Save'),
            onPressed: _submit,
          ),
        ],
      ),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: ListView(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(30.0),
              child: Form(
                key: _formKey,
                child: Column(
                  children: <Widget>[
                    TextFormField(
                      initialValue: _title,
                      decoration: InputDecoration(
                        
                        labelText: 'Title',
                      ),
                      validator: (input) => input.trim().length < 1
                          ? 'Please Enter a valid name'
                          : null,
                      onSaved: (input) => _title = input,
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    TextFormField(
                      controller: _dateController,
                      decoration: InputDecoration(
                        
                        labelText: 'Date',
                      ),
                      onTap: () {
                        Platform.isIOS
                            ? showCupertinoModalPopup(
                                context: context,
                                builder: (context) {
                                  return Container(
                                    height: 300.0,
                                    child: CupertinoDatePicker(
                                      initialDateTime: DateTime.now(),
                                      mode: CupertinoDatePickerMode.date,
                                      onDateTimeChanged: (datetime) {
                                        print(datetime);
                                        _dateController.text =
                                            _dateFormat.format(datetime);
                                        _eventDate = datetime;
                                      },
                                    ),
                                  );
                                })
                            : _andriodDatePicker(context);
                      },
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    TextFormField(
                      initialValue: _body,
                      decoration: InputDecoration(
                        
                        labelText: 'Body',
                      ),
                      onSaved: (input) => _body = input,
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    TextFormField(
                      initialValue: _category,
                      decoration: InputDecoration(
                        
                        labelText: 'Category',
                      ),
                      onSaved: (input) => _category = input,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
