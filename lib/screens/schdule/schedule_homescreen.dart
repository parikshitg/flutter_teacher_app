import 'package:flutter/material.dart';

import '../../models/schedule_model.dart';
import 'add_schedule.dart';

class ScheduleHomeScreen extends StatefulWidget {
  static final String id = 'schedule_homescreen';

  @override
  _ScheduleHomeScreenState createState() => _ScheduleHomeScreenState();
}

class _ScheduleHomeScreenState extends State<ScheduleHomeScreen>
    with SingleTickerProviderStateMixin {
  final List<Tab> scheduleTabs = <Tab>[
    Tab(
      text: 'Monday',
    ),
    Tab(text: 'Tuesday'),
    Tab(text: 'Wednesday'),
    Tab(text: 'Thursday'),
    Tab(text: 'Friday'),
    Tab(text: 'Saturday'),
  ];

  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: scheduleTabs.length);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            onPressed: () => Navigator.pushNamed(context, AddSchedule.id),
          )
        ],
        bottom: TabBar(
          labelStyle: TextStyle(fontSize: 18.0),
          labelColor: Colors.black,
          unselectedLabelColor: Colors.grey,
          //indicatorColor: Colors.red,
          isScrollable: true,
          controller: _tabController,
          tabs: scheduleTabs,
        ),
      ),
      body: TabBarView(
        controller: _tabController,
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
            Text('Tuesday'),
            Text('Wenesday'),
            Text('Thursday'),
            Text('Friday'),
            Text('Saturday'),
          ],
      ),
    );
  }
}
