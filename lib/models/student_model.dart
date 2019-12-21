import 'package:flutter/foundation.dart';

class Student {
  final String name;
  final String rollNo;
  final String bloodGroup;
  final String fathersName;
  final String mothersName;
  final String fathersPhoneNo;
  final String mothersPhoneNo;
  final int gender;
   DateTime dob;
  final String address;

  Student(
      {@required this.name,
      @required this.rollNo,
      this.bloodGroup,
      this.fathersName,
      this.mothersName,
      this.fathersPhoneNo,
      this.mothersPhoneNo,
      this.gender,
      this.dob,
      this.address});
}
