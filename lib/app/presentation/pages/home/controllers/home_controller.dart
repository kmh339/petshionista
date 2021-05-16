import 'package:get/get.dart';

class HomeController extends GetxController {
  Rx<int> tabIndex = 0.obs;

  void updateTab(int index) {
    tabIndex.value = index;
  }
}
