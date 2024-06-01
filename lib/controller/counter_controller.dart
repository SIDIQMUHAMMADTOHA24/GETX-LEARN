import 'package:get/get.dart';

class CounterControlelr extends GetxController {
  var counter = 0.obs;
  var isDark = false.obs;

  void onChangeDarkMode() => isDark.value = !isDark.value;
  void incremment() => counter++;
}
