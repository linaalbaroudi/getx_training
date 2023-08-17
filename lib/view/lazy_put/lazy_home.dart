import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_training/controller/getx_arch/counter_getBuilder_controller.dart';

import 'screen1.dart';
import 'screen2.dart';

class LazyHome extends StatelessWidget {
  LazyHome({super.key});

  final  extController = Get.lazyPut(() => CounterGetBuilderController(), fenix: true);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Lazy Home"),
        foregroundColor: Theme.of(context).canvasColor,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Get.to(() => Screen1());
                },
                child: const Text("screen 1")),
            ElevatedButton(
                onPressed: () {
                  Get.to(() => Screen2());
                },
                child: const Text("screen 2")),
          ],
        ),
      ),
    );
  }
}
