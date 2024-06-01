import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Pages2 extends StatelessWidget {
  const Pages2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pages2'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(Get.arguments.toString()),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
              onPressed: () {
                Get.back();
              },
              child: const Text('Kembali')),
        ],
      )),
    );
  }
}
