import 'package:flutter/material.dart';

import '../../models/schedule_model.dart';

class AddSchedule extends StatefulWidget {
  static final id = 'add_schedule';

  final Schedule schedule;

  AddSchedule({this.schedule});

  @override
  _AddScheduleState createState() => _AddScheduleState();
}

class _AddScheduleState extends State<AddSchedule> {
  final _formKey = GlobalKey<FormState>();

  String _startTime = '';
  String _endTime = '';
  String _className = '';
  String _section = '';
  String _subject = '';

  TimeOfDay _time = TimeOfDay.now();
  TimeOfDay picked;

  Future<Null> selectTime(BuildContext context) async{
    picked = await showTimePicker(
      context: context,
      initialTime: _time,
    );

    setState(() {
      _time = picked;
      print(_time);
    });
  }


  _submit() {
    if(_formKey.currentState.validate()){
      _formKey.currentState.save();

      Schedule schedule = Schedule(
        className: _className,
        startTime: _startTime,
        section: _section,
        endTime: _endTime,
        subject: _subject,
      );

      print('className: ${schedule.className}');
      print('section: ${schedule.section}');
      print('startTime: ${schedule.startTime}');
      print('endTime: ${schedule.endTime}');
      print('subject: ${schedule.subject}');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Add Schedule",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          color: Colors.black,
          onPressed: () => Navigator.pop(context),
        ),
        actions: <Widget>[
          FlatButton(
            child: Text(
              'save',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            onPressed: _submit,
          ),
        ],
      ),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
          child: Column(
            children: <Widget>[
              TextFormField(
                initialValue: _className,
                decoration: InputDecoration(
                  icon: Icon(
                    Icons.class_,
                  ),
                  labelText: 'Class Name',
                ),
                validator: (input) => input.trim().length < 1
                    ? 'Please Enter a valid Class name'
                    : null,
                onSaved: (input) => _className = input,
              ),
              SizedBox(height: 20.0,),
              TextFormField(
                initialValue: _section,
                decoration: InputDecoration(
                  icon: Icon(
                    Icons.bookmark,
                  ),
                  labelText: 'Section',
                ),
                validator: (input) => input.trim().length < 1
                    ? 'Please Enter a valid section'
                    : null,
                onSaved: (input) => _section = input,
              ),
              SizedBox(height: 20.0,),
              TextFormField(
                initialValue: _subject,
                decoration: InputDecoration(
                  icon: Icon(
                    Icons.subject,
                  ),
                  labelText: 'Subject',
                ),
                validator: (input) => input.trim().length < 1
                    ? 'Please Enter a valid name'
                    : null,
                onSaved: (input) => _subject = input,
              ),
              SizedBox(height: 20.0,),
              TextFormField(
                onTap: () {
                  selectTime(context);
                },
                initialValue: _startTime,
                decoration: InputDecoration(
                  icon: Icon(
                    Icons.timer,
                  ),
                  labelText: 'Start Time',
                ),
                validator: (input) => input.trim().length < 1
                    ? 'Please Enter a valid name'
                    : null,
                onSaved: (input) => _startTime = input,
              ),
              SizedBox(height: 20.0,),
              TextFormField(
                initialValue: _endTime,
                decoration: InputDecoration(
                  icon: Icon(
                    Icons.timer_off,
                  ),
                  labelText: 'End Time',
                ),
                validator: (input) => input.trim().length < 1
                    ? 'Please Enter a valid name'
                    : null,
                onSaved: (input) => _endTime = input,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
