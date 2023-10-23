// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Course {
  final String name;
  final String description;
  final String image;
  final int price;

  Course({
    required this.name,
    required this.description,
    required this.image,
    required this.price,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'description': description,
      'image': image,
      'price': price,
    };
  }

  factory Course.fromMap(Map<String, dynamic> map) {
    return Course(
      name: map['name'],
      description: map['description'],
      image: map['image'],
      price: map['price'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Course.fromJson(String source) =>
      Course.fromMap(json.decode(source) as Map<String, dynamic>);
}
