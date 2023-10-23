// import 'package:assignment1/books.dart';
// import 'package:dio/dio.dart';
// import 'package:flutter/material.dart';

// import 'book_card.dart';

// class MyBooks extends StatefulWidget {
//   const MyBooks({super.key});

//   @override
//   State<MyBooks> createState() => _MyBooksState();
// }

// class _MyBooksState extends State<MyBooks> {
//   @override
//   void initState() {
//     super.initState();
//     getData();
//   }

//   var booksData;

//   Future<List<Books>> getData() async {
//     Dio dio = Dio();
//     var url = 'https://api.tablebackend.com/v1/rows/y89PvZp4TdwW';
//     var response = await dio.get(url);
//     if (response.statusCode == 200) {
//       var res = response.data["data"];
//       print(res.runtimeType);
//       return List<Books>.from(res.map((e) => Books.fromMap(e))).toList();
//       setState(() {});
//     }
//     print(booksData.runtimeType);
//     //response.data["data"]까지는 List<dynamic>
//     //-> List<Map>으로 먼저 변경해줄 것 ->
//     //그리고 List<Book>으로 최종 변경해야한다
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         home: Scaffold(
//       body: ListView.builder(
//           itemCount: 2,
//           itemBuilder: ((context, index) {
//             // return BookCard(books: booksData);
//           })),
//     ));
//   }
// }
