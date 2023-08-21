import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_training/main.dart';

class Admin extends StatelessWidget {
  const Admin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home admin"),
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
                child: Text("Welcome Admin! you are Logged in.",
                    style: Theme.of(context).textTheme.headlineLarge),
              ),
            ),
            TextButton(
                onPressed: () {
                  // auth middleware step 5:
                  sharedPreferences!.clear();
                  Get.offAllNamed("/");
                },
                child: const Text("Log Out")),
          ],
        ),
      ),
    );
  }
}
