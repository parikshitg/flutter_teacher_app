import 'package:flutter/material.dart';

class ScheduleHomeScreen extends StatefulWidget {
  static final String id = 'schedule_homescreen';

  @override
  _ScheduleHomeScreenState createState() => _ScheduleHomeScreenState();
}

class _ScheduleHomeScreenState extends State<ScheduleHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Schedule',
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
              onPressed: () => print('add schedule'),
            )
          ],
          bottom: TabBar(
            tabs: <Widget>[
              Text(
                'Mon',
                style: TextStyle(color: Colors.black),
              ),
              Text(
                'Tue',
                style: TextStyle(color: Colors.black),
              ),
              Text(
                'Wed',
                style: TextStyle(color: Colors.black),
              ),
              Text(
                'Thu',
                style: TextStyle(color: Colors.black),
              ),
              Text(
                'Fri',
                style: TextStyle(color: Colors.black),
              ),
              Text(
                'Sat',
                style: TextStyle(color: Colors.black),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            Text('Monday'),
            Text('Tuesday'),
            Text('Wenesday'),
            Text('Thursday'),
            Text('Friday'),
            Text('Saturday'),
          ],
        ),
      ),
    );
  }
}
