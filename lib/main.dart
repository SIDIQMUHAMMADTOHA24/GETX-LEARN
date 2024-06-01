import 'package:belajar_getx/controller/counter_controller.dart';
import 'package:belajar_getx/navigator/pages_1.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final darkMode = Get.put(CounterControlelr());
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(() => GetMaterialApp(
          debugShowCheckedModeBanner: false,
          theme: darkMode.isDark.value ? ThemeData.dark() : ThemeData.light(),
          home: const Pages1(),
        ));
  }
}

class HomePages extends StatelessWidget {
  final counter = Get.find<CounterControlelr>();

  HomePages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Obx(() => Text(counter.counter.toString())),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // counter.incremment();
          counter.onChangeDarkMode();
        },
      ),
    );
  }
}
