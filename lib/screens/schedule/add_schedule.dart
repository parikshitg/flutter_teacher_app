import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

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

  var customFormat = DateFormat('HH:mm a');

  TimeOfDay selectedTime = TimeOfDay.now();

  TextEditingController _startTimeController = TextEditingController();
  TextEditingController _endTimeController = TextEditingController();

  String _startTime = '';
  String _endTime = '';
  String _className = '';
  String _section = '';
  String _subject = '';

  _selectPlatformOS(TextEditingController txtCntrl) {
    return !Platform.isIOS
        ? _cupertinoTimePicker(txtCntrl)
        : _andriodTimePicker(context,txtCntrl);
  }

  _cupertinoTimePicker(TextEditingController txtCntrl) {
    showCupertinoModalPopup(
        context: context,
        builder: (context) {
          return Container(
              height: 300.0,
              child: CupertinoDatePicker(
                initialDateTime: DateTime.now(),
                mode: CupertinoDatePickerMode.time,
                use24hFormat: false,
                onDateTimeChanged: (datetime) {
                  txtCntrl.text =
                  customFormat.format(datetime);
                },
              ));
        });
  }

  Future<Null> _andriodTimePicker(BuildContext context,TextEditingController txtCntrl ) async {
    final TimeOfDay pickedTime = await showTimePicker(
        context: context,
        initialTime: selectedTime,
        builder: (BuildContext context, Widget child) {
          return MediaQuery(
            data: MediaQuery.of(context).copyWith(alwaysUse24HourFormat: false),
            child: child,
          );
        });

    if (pickedTime != null && pickedTime != selectedTime)
      setState(() {
        selectedTime = pickedTime;
        print(selectedTime);
        final now = new DateTime.now();
        final dt = DateTime(now.year, now.month, now.day, selectedTime.hour,
            selectedTime.minute);
        final format = DateFormat.jm(); //"6:00 AM"
        txtCntrl.text = format.format(dt);
      });
  }

  _submit() {
    if (_formKey.currentState.validate()) {
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
              SizedBox(
                height: 20.0,
              ),
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
              SizedBox(
                height: 20.0,
              ),
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
              SizedBox(
                height: 20.0,
              ),
              TextFormField(
                controller: _startTimeController,
                decoration: InputDecoration(
                  icon: Icon(
                    Icons.timer,
                  ),
                  labelText: 'Start Time',
                ),
                onTap: () {_selectPlatformOS(_startTimeController);},
              ),
              SizedBox(
                height: 20.0,
              ),
              TextFormField(
                controller: _endTimeController,
                decoration: InputDecoration(
                  icon: Icon(
                    Icons.timer_off,
                  ),
                  labelText: 'End Time',
                ),
                onTap: () {_selectPlatformOS(_endTimeController);},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
