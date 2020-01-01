import 'package:flutter/material.dart';
import 'package:flutter_teacher_app/widgets/appbar.dart';

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
      appBar: appBarWid('Eventsss', AddEvent.id),
      
    );
  }

  Widget appBarWid(String appBarTitle, String pageid) {
    return AppBar(
      title: Text(
        appBarTitle,
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
          onPressed: () => Navigator.pushNamed(context, pageid),
        )
      ],
    );
  }
}
