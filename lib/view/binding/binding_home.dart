import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_training/controller/getx_arch/counter_getBuilder_controller.dart';
import 'package:getx_training/utils/bindings.dart';

import 'screen1.dart';
import 'screen2.dart';

class BindingHome extends StatelessWidget {
  BindingHome({super.key});

  // final  extController = Get.lazyPut(() => CounterGetBuilderController(), fenix: true);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Binding Home"),
        foregroundColor: Theme.of(context).canvasColor,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Get.to(() => Screen1(), binding: AppBindings(),);
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
