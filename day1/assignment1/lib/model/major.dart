import 'dart:convert';

class Major {
  String id;
  String name;
  String gender;
  String major;
  String address;
  String phone_number;
  String grade;
  String picture;
  String student_id;
  int createdAt;
  int updatedAt;
  Major({
    required this.id,
    required this.name,
    required this.gender,
    required this.major,
    required this.address,
    required this.phone_number,
    required this.grade,
    required this.picture,
    required this.student_id,
    required this.createdAt,
    required this.updatedAt,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'gender': gender,
      'major': major,
      'address': address,
      'phone_number': phone_number,
      'grade': grade,
      'picture': picture,
      'student_id': student_id,
      'createdAt': createdAt,
      'updatedAt': updatedAt,
    };
  }

  factory Major.fromMap(Map<String, dynamic> map) {
    return Major(
      id: map['_id'] as String,
      name: map['name'] as String,
      gender: map['gender'] as String,
      major: map['major'] as String,
      address: map['address'] as String,
      phone_number: map['phone_number'] as String,
      grade: map['grade'] as String,
      picture: map['picture'] as String,
      student_id: map['student_id'] as String,
      createdAt: map['createdAt'] as int,
      updatedAt: map['updatedAt'] as int,
    );
  }

  String toJson() => json.encode(toMap());

  factory Major.fromJson(String source) =>
      Major.fromMap(json.decode(source) as Map<String, dynamic>);
}
