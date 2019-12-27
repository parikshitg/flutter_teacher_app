import 'package:flutter/material.dart';

import '../../screens/events/add_event.dart';

class EventsHomeScreen extends StatefulWidget {
  static final String id = 'events_homescreen';

  @override
  _EventsHomeScreenState createState() => _EventsHomeScreenState();
}

class _EventsHomeScreenState extends State<EventsHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Events',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          color: Colors.black,
          onPressed: () => Navigator.pop(context),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add),
            color: Colors.black,
            onPressed: () => Navigator.pushNamed(context, AddEvent.id),
          )
        ],
      ),
    );
  }
}
