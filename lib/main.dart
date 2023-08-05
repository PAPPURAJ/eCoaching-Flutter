import 'package:ecoaching/api/secondAPI.dart';
import 'package:ecoaching/model/student2.dart';
import 'package:ecoaching/view/view_all_student.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: ViewAllStudent(StudentId: 1,),
      ) // Replace 123 with the desired student ID

    );
  }
}
