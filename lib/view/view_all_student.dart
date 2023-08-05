import 'package:ecoaching/ui/navigation_drawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../api/secondAPI.dart';
import '../model/student2.dart';

class ViewAllStudent extends StatefulWidget {
  final int StudentId;

  ViewAllStudent({required this.StudentId});

  @override
  _ViewAllStudentState createState() => _ViewAllStudentState();
}
Student2? student2;
class _ViewAllStudentState extends State<ViewAllStudent> {


  @override
  void initState() {
    super.initState();
    fetchStudentData(widget.StudentId).then((fetchedStudent2) {
      setState(() {
        student2 = fetchedStudent2;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('All Students'),
      ),
      drawer: getDrawer(context),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: student2 == null
            ? Center(
          child: CircularProgressIndicator(),
        )
            : Card(
          elevation: 5,
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Student ID: ${student2!.id}',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8),
                Text('Name: ${student2!.name}'),
                SizedBox(height: 8),
                Text('Batch: ${student2!.batch}'),
                SizedBox(height: 8),
                Text('Department: ${student2!.department}'),
                SizedBox(height: 8),
                Text('Phone: ${student2!.phone}'),
                SizedBox(height: 8),
                Text('Email: ${student2!.email}'),
                SizedBox(height: 8),
                Text('Present Address: ${student2!.presentAddress}'),
                SizedBox(height: 8),
                Text('Permanent Address: ${student2!.permanentAddress}'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
