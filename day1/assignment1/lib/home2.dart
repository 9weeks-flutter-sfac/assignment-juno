import 'package:assignment1/model/major.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import 'model/todo.dart';

class Home2 extends StatefulWidget {
  const Home2({super.key});

  @override
  State<Home2> createState() => _Home2State();
}

class _Home2State extends State<Home2> {
  Future<List<Major>> getData() async {
    var dio = Dio();
    var res =
        await dio.get('https://api.tablebackend.com/v1/rows/ueINwXE3KnxI');
    var data = res.data['data'];

    List<Major> result =
        List<Major>.from(data.map((e) => Major.fromMap(e)).toList());
    // var result = data.map((e) => Major.fromMap(e)).toList();

    return result;
  }

  Future<List<Todo>> readData() async {
    Dio dio = Dio();
    var url = 'https://jsonplaceholder.typicode.com/todos';
    var res = await dio.get(url);

    if (res.statusCode == 200) {
      var data = res.data;
      print(data.runtimeType); // List<dynamic>
      data = res.data
          .map<Todo>((e) => Todo.fromMap(e))
          .toList(); // 이 방법으로 해결 가능하다.
      print(data.runtimeType); // // List<Todo>
      // --------------------------------------------
      // --------------------------------------------
      var data2 = res.data;
      data2 = data2.map((e) => Todo.fromMap(e)).toList();

      print('data2: ${data2.runtimeType}'); // List<dynamic>
      //res.data는 List<dynamic>이다. 이때 var 키워드로 선언한 data2의 값은 List<dynamic>이다.
      //.map 메서드는 원본 배열을 변환시키지 않는다. 때문에 위 코드는 List<dynamic>의 타입을 가지면서 요소엔 Todo 객체가 있는 형태가 된다.
      // List<dynamic> data2 = [Todo인스턴스, Todo인스턴스, Todo인스턴스 ...]; 형태인 것
      // 따라서 위에 사용한 방법이나 아래와 같은 방법을 통해 타입을 변환시켜준다.
      // List<Todo>.from(res.data.map((e) => Todo.fromMap(e)).toList());
    }
    return [];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FutureBuilder(
            future: readData(),
            builder: (BuildContext context, snapshot) {
              if (snapshot.hasData) {
                return ListView.builder(
                  itemCount: snapshot.data?.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Column(
                      children: [
                        Text(
                          snapshot.data![index].title,
                        ),
                      ],
                    );
                  },
                );
              }
              return Center(
                child: Text('data'),
              );
            }),
      ),
    );
  }
}
