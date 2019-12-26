import 'package:flutter/material.dart';

import '../../models/schedule_model.dart';

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
            isScrollable: true,
            tabs: <Widget>[
              Text(
                'Monday',
                style: TextStyle(color: Colors.black, fontSize: 20.0),
              ),
              Text(
                'Tuesday',
                style: TextStyle(color: Colors.black, fontSize: 20.0),
              ),
              Text(
                'Wednesday',
                style: TextStyle(color: Colors.black, fontSize: 20.0),
              ),
              Text(
                'Thursday',
                style: TextStyle(color: Colors.black, fontSize: 20.0),
              ),
              Text(
                'Friday',
                style: TextStyle(color: Colors.black, fontSize: 20.0),
              ),
              Text(
                'Saturday',
                style: TextStyle(color: Colors.black, fontSize: 20.0),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            SingleChildScrollView(
              child: Column(
                children: schedules.map(
                  (tx) {
                    return Card(
                      elevation: 3.0,
                      child: Padding(
                        padding: EdgeInsets.all(25.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text('${tx.startTime} - ${tx.endTime}'),
                            Text(
                              'Class ${tx.className} - ${tx.section}',
                              style: TextStyle(
                                  fontWeight: FontWeight.w600, fontSize: 16.0),
                            ),
                            Text(tx.subject),
                          ],
                        ),
                      ),
                    );
                  },
                ).toList(),
              ),
            ),
            Column(
              children: schedules.map(
                (tx) {
                  return Card(
                    elevation: 3.0,
                    child: ListTile(
                      leading: Padding(
                        padding: EdgeInsets.symmetric(vertical: 8.0),
                        child: Text('${tx.startTime} - ${tx.endTime}'),
                      ),
                      title: Text(
                        'Class ${tx.className} - ${tx.section}',
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                      trailing: Text(tx.subject),
                      onTap: () {},
                    ),
                  );
                },
              ).toList(),
            ),
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
