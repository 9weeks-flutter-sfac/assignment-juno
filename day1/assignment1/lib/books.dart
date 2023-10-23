class Books {
  String name;
  String age;
  String attachment;
  String pusblisher;
  num price;
  num rating;
  DateTime createdAt;
  DateTime updatedAt;
  Books({
    required this.name,
    required this.age,
    required this.attachment,
    required this.pusblisher,
    required this.price,
    required this.rating,
    required this.createdAt,
    required this.updatedAt,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'age': age,
      'attachment': attachment,
      'pusblisher': pusblisher,
      'price': price,
      'rating': rating,
      'createdAt': createdAt.millisecondsSinceEpoch,
      'updatedAt': updatedAt.millisecondsSinceEpoch,
    };
  }

  factory Books.fromMap(Map<String, dynamic> map) {
    return Books(
      name: map['name'],
      age: map['age'],
      attachment: map['attachment'],
      pusblisher: map['pusblisher'],
      price: map['price'],
      rating: map['rating'],
      createdAt: DateTime.fromMillisecondsSinceEpoch(map['createdAt']),
      updatedAt: DateTime.fromMillisecondsSinceEpoch(map['updatedAt']),
    );
  }
}
