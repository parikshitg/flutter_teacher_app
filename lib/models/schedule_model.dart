import 'package:flutter/foundation.dart';

class Schedule {
  final String startTime;
  final String endTime;
  final String className;
  final String section;
  final String subject;

  Schedule(
      {@required this.startTime,
      @required this.endTime,
      @required this.className,
      @required this.section,
      @required this.subject});
}

final List<Schedule> schedules = [
  Schedule(
    startTime: '8:00',
    endTime: '9:00',
    className: '5',
    section: 'C',
    subject: 'Science',
  ),
  Schedule(
    startTime: '9:00',
    endTime: '10:00',
    className: '6',
    section: 'C',
    subject: 'Science',
  ),
  Schedule(
    startTime: '10:00',
    endTime: '11:00',
    className: '4',
    section: 'B',
    subject: 'Science',
  ),
  Schedule(
    startTime: '11:00',
    endTime: '12:00',
    className: '5',
    section: 'c',
    subject: 'Science',
  ),
  Schedule(
    startTime: '12:00',
    endTime: '1:00',
    className: '5',
    section: 'c',
    subject: 'Maths',
  ),
  Schedule(
    startTime: '1:00',
    endTime: '9:00',
    className: '5',
    section: 'c',
    subject: 'Science',
  ),
  Schedule(
    startTime: '2:00',
    endTime: '9:00',
    className: '5',
    section: 'c',
    subject: 'Science',
  ),
  Schedule(
    startTime: '2:00',
    endTime: '3:00',
    className: '5',
    section: 'c',
    subject: 'Science',
  )
];
