import 'dart:convert';
import 'package:http/http.dart' as http;

import '../model/student2.dart';

Future<Student2?> fetchStudentData(int studentId) async {
  final apiUrl = 'https://ecoaching.up.railway.app/student/$studentId';

  try {
    final response = await http.get(Uri.parse(apiUrl));
    if (response.statusCode == 200) {
      final jsonData = json.decode(response.body);
      return Student2.fromJson(jsonData);
    } else {
      // Handle API error here (e.g., student not found, server error, etc.)
      return null;
    }
  } catch (e) {
    // Handle other errors like network issues here
    return null;
  }
}
