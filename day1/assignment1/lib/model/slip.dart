// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Slip {
  final int id;
  final String advice;

  Slip({required this.id, required this.advice});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'advice': advice,
    };
  }

  factory Slip.fromMap(Map<String, dynamic> map) {
    return Slip(
      id: map['id'] as int,
      advice: map['advice'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Slip.fromJson(String source) {
    return Slip.fromMap(json.decode(source) as Map<String, dynamic>);
  }
}
