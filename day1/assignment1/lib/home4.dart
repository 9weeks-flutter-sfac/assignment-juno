import 'package:assignment1/getx/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home4 extends StatelessWidget {
  const Home4({super.key});

  @override
  Widget build(BuildContext context) {
    var controller = Get.find<AppController>();
    return Scaffold(
      body: Center(
        child: Text('${controller.memos.length}개의 메모'),
      ),
    );
  }
}
