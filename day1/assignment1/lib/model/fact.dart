// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Fact {
  final String fact;
  final int length;

  Fact({
    required this.fact,
    required this.length,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fact': fact,
      'length': length,
    };
  }

  factory Fact.fromMap(Map<String, dynamic> map) {
    return Fact(
      fact: map['fact'] as String,
      length: map['length'] as int,
    );
  }

  String toJson() => json.encode(toMap());

  factory Fact.fromJson(String source) =>
      Fact.fromMap(json.decode(source) as Map<String, dynamic>);
}
