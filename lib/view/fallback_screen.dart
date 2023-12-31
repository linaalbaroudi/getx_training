import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_training/utils/settingsServices.dart';

class FallbackScreen extends GetView<SettingsServices> { // GetView<SettingsServices> gives controller
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
                  controller.sharedPreferences.clear(); // GetView<SettingsServices> gives controller
                  Get.offAllNamed("/");
                },
                child: const Text("Log in")),
          ],
        ),
      ),
    );
  }
}
