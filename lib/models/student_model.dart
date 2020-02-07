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
  final String profileUrl;
   bool isPresent;

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
      this.address,
      this.profileUrl,
      this.isPresent});
}

final List<Student> students = [
    Student(
      name: 'John Cena',
      rollNo: '1',
      fathersName: 's/o John Cena Sr',
      isPresent: false,
    ),
    Student(
      name: 'Randy Orton',
      rollNo: '2',
      fathersName: 's/o Randy Keith Sr',
      isPresent: false,
    ),
    Student(
      name: 'Triple HHH',
      rollNo: '3',
      fathersName: 's/o Vince McMahon Sr',
      isPresent: false,
    ),
    Student(
      name: 'Shawn Michaels',
      rollNo: '4',
      fathersName: 's/o Bret Hart Sr',
      isPresent: false,
    ),
    Student(
      name: 'Batista',
      rollNo: '5',
      fathersName: 's/o Dave Bautista Sr',
      isPresent: false,
    ),
    Student(
      name: 'Rey Mysterio',
      rollNo: '6',
      fathersName: 's/o Rey Mysterio Sr',
      isPresent: false,
    ),
    Student(
      name: 'Seth Rollins',
      rollNo: '7',
      fathersName: 's/o Rollins Seth Sr',
      isPresent: false,
    ),
    Student(
      name: 'Undertaker',
      rollNo: '8',
      fathersName: 's/o Mark Calaway Sr',
      isPresent: false,
    ),
    Student(
      name: 'Kane',
      rollNo: '9',
      fathersName: 's/o Mark Calaway Sr',
      isPresent: false,
    ),
    Student(
      name: 'Stone Cold',
      rollNo: '10',
      fathersName: 's/o Steve Austin Sr',
      isPresent: false,
    ),
    Student(
      name: 'Roman Reigns',
      rollNo: '11',
      fathersName: 's/o Roman Reigns Sr',
      isPresent: false,
    ),
    Student(
      name: 'Dean Ambrose',
      rollNo: '12',
      fathersName: 's/o Jon Moxley Sr',
      isPresent: false,
    ),
    Student(
      name: 'Mike Mizanin',
      rollNo: '13',
      fathersName: 's/o The Miz Sr',
      isPresent: false,
    ),
    Student(
      name: 'Dolph Ziggler',
      rollNo: '14',
      fathersName: 's/o Dolph Ziggler Sr',
      isPresent: false,
    ),
    Student(
      name: 'Big Show',
      rollNo: '15',
      fathersName: 's/o Mark Henry Sr',
      isPresent: false,
    ),
    Student(
      name: 'The Rock',
      rollNo: '16',
      fathersName: 's/o Dywane Johnson Sr',
      isPresent: false,
    ),
  ];

