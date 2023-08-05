class Student {
  int? _id;
  String? _name;
  String? _batch;
  String? _department;
  String? _phone;
  String? _email;
  String? _presentAddress;
  String? _permanentAddress;

  Student(
      {int? id,
        String? name,
        String? batch,
        String? department,
        String? phone,
        String? email,
        String? presentAddress,
        String? permanentAddress}) {
    if (id != null) {
      this._id = id;
    }
    if (name != null) {
      this._name = name;
    }
    if (batch != null) {
      this._batch = batch;
    }
    if (department != null) {
      this._department = department;
    }
    if (phone != null) {
      this._phone = phone;
    }
    if (email != null) {
      this._email = email;
    }
    if (presentAddress != null) {
      this._presentAddress = presentAddress;
    }
    if (permanentAddress != null) {
      this._permanentAddress = permanentAddress;
    }
  }

  int? get id => _id;
  set id(int? id) => _id = id;
  String? get name => _name;
  set name(String? name) => _name = name;
  String? get batch => _batch;
  set batch(String? batch) => _batch = batch;
  String? get department => _department;
  set department(String? department) => _department = department;
  String? get phone => _phone;
  set phone(String? phone) => _phone = phone;
  String? get email => _email;
  set email(String? email) => _email = email;
  String? get presentAddress => _presentAddress;
  set presentAddress(String? presentAddress) =>
      _presentAddress = presentAddress;
  String? get permanentAddress => _permanentAddress;
  set permanentAddress(String? permanentAddress) =>
      _permanentAddress = permanentAddress;

  Student.fromJson(Map<String, dynamic> json) {
    _id = json['id'];
    _name = json['name'];
    _batch = json['batch'];
    _department = json['department'];
    _phone = json['phone'];
    _email = json['email'];
    _presentAddress = json['presentAddress'];
    _permanentAddress = json['permanentAddress'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this._id;
    data['name'] = this._name;
    data['batch'] = this._batch;
    data['department'] = this._department;
    data['phone'] = this._phone;
    data['email'] = this._email;
    data['presentAddress'] = this._presentAddress;
    data['permanentAddress'] = this._permanentAddress;
    return data;
  }
}
