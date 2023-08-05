class Student2 {
  int id;
  String name;
  String batch;
  String department;
  String phone;
  String email;
  String presentAddress;
  String permanentAddress;

  Student2({
    required this.id,
    required this.name,
    required this.batch,
    required this.department,
    required this.phone,
    required this.email,
    required this.presentAddress,
    required this.permanentAddress,
  });

  factory Student2.fromJson(Map<String, dynamic> json) {
    return Student2(
      id: json['id'],
      name: json['name'],
      batch: json['batch'],
      department: json['department'],
      phone: json['phone'],
      email: json['email'],
      presentAddress: json['presentAddress'],
      permanentAddress: json['permanentAddress'],
    );
  }
}
