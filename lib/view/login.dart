import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_training/utils/settingsServices.dart';

class Login extends GetView<SettingsServices> { // GetView<SettingsServices> gives controller
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("login".tr),
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
                child: Text("${'hello'.tr} you are not logged in !",
                    style: Theme.of(context).textTheme.headlineLarge),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  // auth middleware step 4:
                  controller.sharedPreferences.setString("userID", "1"); // GetView<SettingsServices> gives controller
                  controller.sharedPreferences.setString("role", "user"); // GetView<SettingsServices> gives controller
                  Get.offAllNamed("home");
                },
                child: Text("login".tr)),
            ElevatedButton(
                onPressed: () {
                  // auth middleware step 4:
                  controller.sharedPreferences.setString("userID", "0"); // GetView<SettingsServices> gives controller
                  controller.sharedPreferences.setString("role", "admin"); // GetView<SettingsServices> gives controller
                  Get.offAllNamed("admin");
                },
                child: const Text("Admin Login")),
          ],
        ),
      ),
    );
  }
}
