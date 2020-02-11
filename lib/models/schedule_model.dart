import 'package:flutter/foundation.dart';

class Schedule {
  final String day;
  final String startTime;
  final String endTime;
  final String className;
  final String section;
  final String subject;

  Schedule(
      {this.day,
        @required this.startTime,
      @required this.endTime,
      @required this.className,
      @required this.section,
      @required this.subject});
}

final List<Schedule> schedules = [
  Schedule(
    day: 'Monday',
    startTime: '08:00',
    endTime: '09:00',
    className: '5',
    section: 'C',
    subject: 'Science',
  ),
  Schedule(
    day: 'Monday',
    startTime: '09:00',
    endTime: '10:00',
    className: '6',
    section: 'C',
    subject: 'Science',
  ),
  Schedule(
    day: 'Monday',
    startTime: '10:00',
    endTime: '11:00',
    className: '4',
    section: 'B',
    subject: 'Science',
  ),
  Schedule(
    day: 'Monday',
    startTime: '11:00',
    endTime: '12:00',
    className: '5',
    section: 'C',
    subject: 'Science',
  ),
  Schedule(
    startTime: '12:00',
    endTime: '01:00',
    className: '5',
    section: 'C',
    subject: 'Maths',
  ),
  Schedule(
    startTime: '01:00',
    endTime: '02:00',
    className: '7',
    section: 'C',
    subject: 'Science',
  ),
  Schedule(
    day: 'Monday',
    startTime: '02:00',
    endTime: '03:00',
    className: '5',
    section: 'B',
    subject: 'Science',
  ),
  Schedule(
    day: 'Monday',
    startTime: '03:00',
    endTime: '04:00',
    className: '5',
    section: 'A',
    subject: 'Science',
  )
];
