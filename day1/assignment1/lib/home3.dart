import 'package:assignment1/getx/controller.dart';

import 'package:assignment1/home4.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home3 extends StatefulWidget {
  const Home3({super.key});

  @override
  State<Home3> createState() => _Home3State();
}

class _Home3State extends State<Home3> {
  @override
  Widget build(BuildContext context) {
    AppController controller = Get.put(AppController());
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            controller.memos.add('memo');
            setState(() {});
          }),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('${controller.memos.length}개'),
            ElevatedButton(
                onPressed: () {
                  Get.to(() => Home4());
                },
                child: Text('info!'))
          ],
        ),
      ),
    );
  }
}
