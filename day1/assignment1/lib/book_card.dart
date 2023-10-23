import 'package:assignment1/books.dart';
import 'package:flutter/material.dart';

class BookCard extends StatelessWidget {
  const BookCard({super.key, required this.books});
  final Books books;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Text('책 제목'),
          Text('age'),
          Text('attachment'),
          Text('출판사'),
          Text('price'),
          Text('rating'),
        ],
      ),
    );
  }
}
