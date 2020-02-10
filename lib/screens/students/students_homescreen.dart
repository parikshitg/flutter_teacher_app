import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../screens/students/student_details.dart';
import '../../models/student_model.dart';
import './add_student.dart';

class StudentsHomescreen extends StatelessWidget {
  static final String id = 'students_homescreen';

  /*@override
  _StudentsHomescreenState createState() => _StudentsHomescreenState();
}

class _StudentsHomescreenState extends State<StudentsHomescreen> {*/

  

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
          icon: Icon(Icons.arrow_back_ios),
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
        child: Padding(
          padding: EdgeInsets.fromLTRB(10.0,5.0,0.0,5.0),
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
                            launch("tel:{tx.fathersPhoneNo}");
                          },
                        ),
                        IconButton(
                          icon: Icon(
                            Icons.mail,
                            color: Colors.black54,
                          ),
                          onPressed: () {
                            launch("sms:{tx.fathersPhoneNo}");
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
      ),
    );
  }
}
