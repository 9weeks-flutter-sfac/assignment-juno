import 'dart:convert';

class Border {
  final String activity;
  final String type;
  final int participants;
  final num price;
  final String? link;
  final String key;
  final num accessibility;

  Border({
    required this.activity,
    required this.type,
    required this.participants,
    required this.price,
    this.link,
    required this.key,
    required this.accessibility,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activity': activity,
      'type': type,
      'participants': participants,
      'price': price,
      'link': link,
      'key': key,
      'accessibility': accessibility,
    };
  }

  factory Border.fromMap(Map<String, dynamic> map) {
    return Border(
      activity: map['activity'],
      type: map['type'],
      participants: map['participants'],
      price: map['price'],
      link: map['link'] != null ? map['link'] as String : null,
      key: map['key'],
      accessibility: map['accessibility'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Border.fromJson(String source) =>
      Border.fromMap(json.decode(source) as Map<String, dynamic>);
}
