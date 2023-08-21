import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_training/view/navigation/page1.dart';
import 'package:getx_training/view/navigation/page3.dart';

import '../home.dart';
import 'navigation.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Page 2"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  // Navigator.of(context).push(MaterialPageRoute(builder: (context) => const Page1()));
                  Get.to(const Page1());
                },
                child: const Text("Page 1 - push / to")),
            ElevatedButton(
                onPressed: () {
                  // Navigator.of(context).push(MaterialPageRoute(builder: (context) => const Home()));
                  Get.offAll(const Navigation());
                },
                child: const Text("Home - pushAndRemoveUntil / offAll")),
            ElevatedButton(
                onPressed: () {
                  // Navigator.of(context).pushAndRemoveUntil(builder: (context) => const Page3()));
                  Get.to(const Page3());
                },
                child: const Text("Page 3 - push / to")),
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
                  Get.offAll( Home());
                },
                child: const Text("Exit")),
          ],
        ),
      ),
    );
  }
}
