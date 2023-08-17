import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_training/view/calculator/calculator.dart';
import 'package:getx_training/view/calculator/calculator_getx.dart';
import 'package:getx_training/view/getx_arch/counter_obx.dart';

import 'navigation/navigation.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        foregroundColor: Theme.of(context).canvasColor,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: Center(
                  child: Text("Getx Navigation",
                      style: Theme.of(context).textTheme.headlineLarge),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  Get.offAll(const Navigation());
                },
                child: const Text("go to Navigation")),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Center(
                child: Text("Getx Architecture",
                    style: Theme.of(context).textTheme.headlineLarge),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  Get.toNamed("/counterGetBuilder");
                },
                child: const Text("Counter GetBuilder")),
            ElevatedButton(
                onPressed: () {
                  Get.toNamed("/counterGetx");
                },
                child: const Text("Counter Getx")),
            ElevatedButton(
                onPressed: () {
                  Get.to(CounterOBX());
                },
                child: const Text("Counter Obx")),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Center(
                child: Text("Advanced",
                    style: Theme.of(context).textTheme.headlineLarge),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  Get.to(Calculator());
                },
                child: const Text("Calculator GetBuilder")),
            ElevatedButton(
                onPressed: () {
                  Get.to(CalculatorGetx());
                },
                child: const Text("Calculator Getx")),
          ],
        ),
      ),
    );
  }
}