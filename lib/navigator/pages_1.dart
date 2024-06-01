import 'package:belajar_getx/navigator/pages_2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Pages1 extends StatelessWidget {
  const Pages1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pages1'),
      ),
      body: Center(
          child: ElevatedButton(
              onPressed: () {
                //Nav push replacement
                // Get.off(const Pages2());

                //Nav push
                // Get.to(const Pages2());

                //Nav remove until || menghapus semua pages
                // Get.offAll(const Pages2());

                //Melanpar argument
                Get.to(const Pages2(), arguments: 'Ini data dari pages 1');
              },
              child: const Text('Pages 2'))),
    );
  }
}
