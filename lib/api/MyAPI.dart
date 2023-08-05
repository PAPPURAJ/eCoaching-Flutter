import 'dart:convert';

import '../model/student.dart';
import 'package:http/http.dart' as http;

class MyAPI{

  Future<Student> fetchStudent(int id) async {
    final response = await http.get(Uri.parse('https://ecoaching.up.railway.app/student/$id'));

    if (response.statusCode == 200) {
      // If the server did return a 200 OK response,
      // then parse the JSON.
      print(response.body);
      return Student.fromJson(jsonDecode(response.body));
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to load Student');
    }
  }
}