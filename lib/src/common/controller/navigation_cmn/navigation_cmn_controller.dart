import 'package:get/get.dart';

class NavigationCmnController extends GetxController {
  final RxInt _selectedIndex = 0.obs;

  int get selectedIndex => _selectedIndex.value;

  void changeIndex(int index) {
    if (index != _selectedIndex.value) {
      _selectedIndex.value = index;
    }
  }

  void moveToHome() {
    changeIndex(0);
  }

  void moveToCategory() {
    changeIndex(1);
  }
}
