import 'package:flutter/material.dart';
import 'package:flutter_teacher_app/screens/students/add_student.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class StudentDetails extends StatefulWidget {
  static final id = 'edit_student';

  @override
  _StudentDetailsState createState() => _StudentDetailsState();
}

class _StudentDetailsState extends State<StudentDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Student Details',
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
            icon: Icon(Icons.edit),
            color: Colors.black,
            onPressed: () => Navigator.pushNamed(context, AddStudent.id),
          )
        ],
      ),
      body: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 30.0),
                child: Column(
          children: <Widget>[
            CircleAvatar(
                radius: 50.0,
                backgroundColor: Colors.grey,
            ),
            SizedBox(height: 10.0,),
            Text(
                'Student Name',
                style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w600),
            ),
            SizedBox(height: 5.0,),
            Text('Roll No: 1'),
            SizedBox(height: 20.0,),
            Card(
                child: ListTile(
                  //dense: true,
                  leading: Icon(Icons.cake,),
                  title: Text('26 February, 1996'),
                  subtitle: Text('DOB'),
                ),
            ),
            Card(
                child: ListTile(
                  leading: Icon(Entypo.drop),
                  title: Text('A+'),
                  subtitle: Text('Blood Group'),
                ),
            ),
            Card(
                child: ListTile(
                  leading: Icon(FontAwesomeIcons.male),
                  title: Text('Mahendra Singh Dhoni'),
                  subtitle: Text('Father\'s Name'),
                ),
            ),
            Card(
                child: ListTile(
                  leading: Icon(Icons.phone),
                  title: Text('+91 0987654321'),
                  subtitle: Text('Father\'s Phone No.'),
                ),
            ),
            Card(
                child: ListTile(
                  leading: Icon(FontAwesomeIcons.female),
                  title: Text('Sakshi Dhoni'),
                  subtitle: Text('Mother\'s Name'),
                ),
            ),
            Card(
                child: ListTile(
                  leading: Icon(Icons.phone),
                  title: Text('+91 0987654321'),
                  subtitle: Text('Mother\'s Phone No.'),
                ),
            ),
            Card(
                child: ListTile(
                  leading: Icon(FontAwesomeIcons.transgender),
                  title: Text('Male'),
                  subtitle: Text('Gender'),
                ),
            ),
            Card(
                child: ListTile(
                  leading: Icon(FontAwesomeIcons.locationArrow),
                  title: Text('Sherpa Gaon, Kalimpong'),
                  subtitle: Text('Address'),
                ),
            ),
          ],
        ),
              ),
      ),
    );
  }
}
