import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_training/view/home.dart';
import 'package:getx_training/view/navigation/page1.dart';
import 'package:getx_training/view/navigation/page2.dart';
import 'package:getx_training/view/navigation/page3.dart';

class Navigation extends StatelessWidget {
  const Navigation({super.key});

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
                  // Navigator.of(context).push(MaterialPageRoute(builder: (context) => const Page1()));
                  Get.to(const Page1());
                },
                child: const Text("Page 1 - Push / to ")),
            ElevatedButton(
                onPressed: () {
                  // Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => const Page2()));
                  Get.off(const Page2());
                },
                child: const Text("Page 2 - PushReplacement / off")),
            ElevatedButton(
                onPressed: () {
                  // Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) => const Page3()));
                  Get.offAll(const Page3());
                },
                child: const Text("Page 3 - pushAndRemoveUntil / offAll")),
            ElevatedButton(
                onPressed: () {
                  // Navigator.of(context).maybePop();
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
