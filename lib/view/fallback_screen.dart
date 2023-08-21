import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_training/main.dart';

class FallbackScreen extends StatelessWidget {
  const FallbackScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("fallback screen"),
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
                child: Text("fallback screen",
                    style: Theme.of(context).textTheme.headlineLarge),
              ),
            ),
            TextButton(
                onPressed: () {
                  // auth middleware step 5:
                  sharedPreferences!.clear();
                  Get.offAllNamed("/");
                },
                child: const Text("Log in")),
          ],
        ),
      ),
    );
  }
}
