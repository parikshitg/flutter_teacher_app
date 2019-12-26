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
    startTime: '08:00',
    endTime: '09:00',
    className: '5',
    section: 'C',
    subject: 'Science',
  ),
  Schedule(
    startTime: '09:00',
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
    startTime: '02:00',
    endTime: '03:00',
    className: '5',
    section: 'B',
    subject: 'Science',
  ),
  Schedule(
    startTime: '03:00',
    endTime: '04:00',
    className: '5',
    section: 'A',
    subject: 'Science',
  )
];
