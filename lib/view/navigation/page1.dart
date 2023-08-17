import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_training/view/navigation/page2.dart';
import 'package:getx_training/view/navigation/page3.dart';

import '../home.dart';
import 'navigation.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Page 1"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  // Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) => const Home()));
                  Get.offAll(const Navigation());
                },
                child: const Text("Home - pushAndRemoveUntil / offAll")),
            ElevatedButton(
                onPressed: () {
                  // Navigator.of(context).pushReplacementNamed("/page2");
                  Get.offNamed("/page2");
                },
                child: const Text("Page 2 - pushReplacementNamed / offNamed")),
            ElevatedButton(
                onPressed: () {
                  // Navigator.of(context).pushNamed("/page3");
                  Get.toNamed("/page3");
                },
                child: const Text("Page 3 - pushNamed / toNamed")),
            ElevatedButton(
                onPressed: () {
                  // Navigator.of(context).mayBePop();
                  Get.back();
                },
                child: const Text("Back / mayBePop")),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text("pop")),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Center(
                child: Text("Exit Navigation",
                    style: Theme.of(context).textTheme.headlineLarge),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  // Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) => const Page3()));
                  Get.offAll(const Home());
                },
                child: const Text("Exit")),
          ],
        ),
      ),
    );
  }
}
