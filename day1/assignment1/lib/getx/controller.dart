import 'package:get/get.dart';

class AppController extends GetxController {
  RxList<String> memos = <String>[].obs;

  @override
  void onInit() {
    super.onInit();
    print('hihi');
    ever(memos, (callback) => print('a'));
  }
}
