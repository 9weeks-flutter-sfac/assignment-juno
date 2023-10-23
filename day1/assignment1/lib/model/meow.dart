import 'dart:convert';

class Meow {
  final String data;

  Meow({
    required this.data,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'data': data,
    };
  }

  factory Meow.fromMap(Map<String, dynamic> map) {
    return Meow(data: map['data'].first);
  }

  String toJson() => json.encode(toMap());

  factory Meow.fromJson(String source) =>
      Meow.fromMap(json.decode(source) as Map<String, dynamic>);
}
