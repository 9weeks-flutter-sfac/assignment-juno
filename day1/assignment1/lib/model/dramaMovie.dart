// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class DramaMovie {
  String id;
  int? createdAt;
  int? updatedAt;
  String? title;
  String? rating;
  String? releaseDate;
  String? runningTime;
  String? actor;
  String? genre;

  DramaMovie({
    required this.id,
    this.createdAt,
    this.updatedAt,
    this.title,
    this.rating,
    this.releaseDate,
    this.runningTime,
    this.actor,
    this.genre,
  });

  factory DramaMovie.fromMap(Map<String, dynamic> map) {
    return DramaMovie(
      id: map['id'],
      createdAt: map['createdAt'] != null ? map['createdAt'] as int : null,
      updatedAt: map['updatedAt'] != null ? map['updatedAt'] as int : null,
      title: map['title'] != null ? map['title'] as String : null,
      rating: map['rating'] != null ? map['rating'] as String : null,
      releaseDate:
          map['releaseDate'] != null ? map['releaseDate'] as String : null,
      runningTime:
          map['runningTime'] != null ? map['runningTime'] as String : null,
      actor: map['actor'] != null ? map['actor'] as String : null,
      genre: map['genre'] != null ? map['genre'] as String : null,
    );
  }
}
