import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_training/main.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login"),
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
                child: Text("you are not logged in !",
                    style: Theme.of(context).textTheme.headlineLarge),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  // auth middleware step 4:
                  sharedPreferences!.setString("userID", "1");
                  sharedPreferences!.setString("role", "user");
                  Get.offAllNamed("home");
                },
                child: const Text("Login")),
            ElevatedButton(
                onPressed: () {
                  // auth middleware step 4:
                  sharedPreferences!.setString("userID", "0");
                  sharedPreferences!.setString("role", "admin");
                  Get.offAllNamed("admin");
                },
                child: const Text("Admin Login")),
          ],
        ),
      ),
    );
  }
}
