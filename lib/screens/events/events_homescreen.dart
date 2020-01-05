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
      body: Column(
        children: <Widget>[
          /*
            if (birthday today)
            Card(
              child: Column(
                children: <Widget>[
                  CircleAvatar(
                image of student
              ),
              Text('It's StudentName's Birthday Today'),
                ]
              ),
              
            ),
          */ 
          Card(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('Final Exams', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18.0),),
                Text('3 January, 2020'),
                Text('Body : Final exams of year 2019- 2020 are commencing from 3 january to 10 january'),
              ],
            ),
          ),
          Card(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('Final Exams', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18.0),),
                Text('3 January, 2020'),
                Text('Body : Final exams of year 2019- 2020 are commencing from 3 january to 10 january'),
              ],
            ),
          ),
          
        ],
      ),
      
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
