import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_training/controller/getx_arch/counter_getBuilder_controller.dart';

class Screen2 extends StatelessWidget {
  Screen2({super.key});

  CounterGetBuilderController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Lazy put screen 2"),
          foregroundColor: Theme.of(context).canvasColor,
        ),
        body: GetBuilder<CounterGetBuilderController>(builder: (controller){
          return Center(child: Text("counter = ${controller.counter}", style: const TextStyle(fontSize: 50),));
        },)
    );
  }
}
