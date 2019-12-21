import 'package:flutter/material.dart';

import '../../screens/students/student_details.dart';
import '../../models/student_model.dart';
import './add_student.dart';

class StudentsHomescreen extends StatelessWidget {
  static final String id = 'students_homescreen';

  /*@override
  _StudentsHomescreenState createState() => _StudentsHomescreenState();
}

class _StudentsHomescreenState extends State<StudentsHomescreen> {*/

  final List<Student> students = [
    Student(
      name: 'John Cena',
      rollNo: '1',
      fathersName: 'John Cena Sr',
    ),
    Student(
      name: 'Randy Orton',
      rollNo: '2',
      fathersName: 'Randy Keith Sr',
    ),
    Student(
      name: 'Triple HHH',
      rollNo: '3',
      fathersName: 'Vince McMahon Sr',
    ),
    Student(
      name: 'Shawn Michaels',
      rollNo: '4',
      fathersName: 'Bret Hart Sr',
    ),
    Student(
      name: 'Batista',
      rollNo: '5',
      fathersName: 'Dave Bautista Sr',
    ),
    Student(
      name: 'Rey Mysterio',
      rollNo: '6',
      fathersName: 'Rey Mysterio Sr',
    ),
    Student(
      name: 'Seth Rollins',
      rollNo: '7',
      fathersName: 'Rollins Seth Sr',
    ),
    Student(
      name: 'Undertaker',
      rollNo: '8',
      fathersName: 'Mark Calaway Sr',
    ),
    Student(
      name: 'Kane',
      rollNo: '9',
      fathersName: 'Mark Calaway Sr',
    ),
    Student(
      name: 'Stone Cold',
      rollNo: '10',
      fathersName: 'Steve Austin Sr',
    ),
    Student(
      name: 'Roman Reigns',
      rollNo: '11',
      fathersName: 'Roman Reigns Sr',
    ),
    Student(
      name: 'Dean Ambrose',
      rollNo: '12',
      fathersName: 'Jon Moxley Sr',
    ),
    Student(
      name: 'Mike Mizanin',
      rollNo: '13',
      fathersName: 'The Miz Sr',
    ),
    Student(
      name: 'Dolph Ziggler',
      rollNo: '14',
      fathersName: 'Dolph Ziggler Sr',
    ),
    Student(
      name: 'Big Show',
      rollNo: '15',
      fathersName: 'Mark Henry Sr',
    ),
    Student(
      name: 'The Rock',
      rollNo: '16',
      fathersName: 'Dywane Johnson Sr',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Class - 5 C",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Colors.black,
          onPressed: () => Navigator.pop(context),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add),
            color: Colors.black,
            onPressed: () => Navigator.pushNamed(context, AddStudent.id),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: students.map(
            (tx) {
              return /*Card(
                elevation: 5,
                margin: EdgeInsets.symmetric(
                  vertical: 8,
                  horizontal: 5,
                ),
                child:*/
                  Container(
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Colors.grey,
                    ),
                  ),
                ),
                child: ListTile(
                  onTap: () => Navigator.pushNamed(context, StudentDetails.id),
                  leading: CircleAvatar(
                    radius: 30,
                    child: Padding(
                      padding: EdgeInsets.all(6),
                    ),
                    backgroundColor: Colors.grey,
                  ),
                  //title: Text("Student Name"),
                  title: Text(tx.name),
                  /*subtitle: Text(
                      "s/o Students Fathers Name",
                    ),*/
                  subtitle: Text(tx.fathersName),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      IconButton(
                        icon: Icon(
                          Icons.phone,
                          color: Colors.black54,
                        ),
                        onPressed: () {
                          print('call button clicked');
                        },
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.mail,
                          color: Colors.black54,
                        ),
                        onPressed: () {
                          print('sms button clicked');
                        },
                      ),
                    ],
                  ),
                ),
              );
              //);
            },
          ).toList(),
        ),
      ),
    );
  }
}
