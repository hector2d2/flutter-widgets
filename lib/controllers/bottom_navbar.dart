import 'package:get/get.dart';

class BottomNavBarController extends GetxController {
  RxInt indexView = 0.obs;
  RxString titleView = 'Widgets'.obs;

  void changeView(int index) {
    indexView.value = index;
    titleView.value = index == 0 ? 'Widgets' : 'Package';
  }
}
