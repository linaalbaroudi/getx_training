import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_training/controller/settings_controller.dart';
import 'package:getx_training/utils/settingsServices.dart';
import 'package:getx_training/view/arguments.dart';
import 'package:getx_training/view/binding/binding_home.dart';
import 'package:getx_training/view/calculator/calculator.dart';
import 'package:getx_training/view/calculator/calculator_getx.dart';
import 'package:getx_training/view/getx_arch/counter_obx.dart';
import 'package:getx_training/view/lazy_put/lazy_home.dart';

import 'getx_arch/counter_dependencyInjection.dart';
import 'navigation/navigation.dart';

class Home extends GetView<SettingsServices> { // GetView<SettingsServices> gives controller
  Home({super.key});
  final SettingsController settingsController = Get.put(SettingsController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        foregroundColor: Theme.of(context).canvasColor,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              // auth middleware
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Text("${'hello'.tr}  user! you are Logged in.",
                        style: Theme.of(context).textTheme.headlineSmall),
                    flex: 3,
                  ),
                  Expanded(
                    flex: 1,
                    child: TextButton(
                        onPressed: () {
                          // auth middleware step 5:
                          controller.sharedPreferences.clear(); // GetView<SettingsServices> gives controller
                          Get.offAllNamed("/");
                        },
                        child: const Text("Log Out")),
                  ),
                ],
              ),
              Divider(),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    flex: 3,
                    child: Text("lang.label".tr,
                        style: Theme.of(context).textTheme.headlineSmall),
                  ),
                  Expanded(
                    flex: 1,
                    child: TextButton(
                        onPressed: () {
                          settingsController.switchLang();
                        },
                        child: Text("switchLang".tr)),
                  ),
                ],
              ),
              Divider(),


              Padding(
                padding: const EdgeInsets.all(16),
                child: Center(
                    child: Text("Getx Navigation",
                        style: Theme.of(context).textTheme.headlineLarge),
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    Get.offAll(() => const Navigation());
                  },
                  child: const Text("go to Navigation")),
              ElevatedButton(
                  onPressed: () {
                    Get.to(() => Arguments(), arguments: {
                      "date" : DateTime.now().subtract(Duration(days: 1)),
                    });
                  },
                  child: const Text("Navigation with arguments")),

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
                    Get.to(() => CounterOBX());
                  },
                  child: const Text("Counter Obx")),
              ElevatedButton(
                  onPressed: () {
                    Get.to(() => CounterDependencyInjection());
                  },
                  child: const Text("get.put(permanent) Counter ")),
              Padding(
                padding: const EdgeInsets.all(16),
                child: Center(
                  child: Text("Advanced",
                      style: Theme.of(context).textTheme.headlineLarge),
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    Get.to(() => Calculator());
                  },
                  child: const Text("Calculator GetBuilder")),
              ElevatedButton(
                  onPressed: () {
                    Get.to(() => CalculatorGetx());
                  },
                  child: const Text("Calculator Getx")),
              Padding(
                padding: const EdgeInsets.all(16),
                child: Center(
                  child: Text("Lazy Put",
                      style: Theme.of(context).textTheme.headlineLarge),
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    Get.to(() => LazyHome());
                  },
                  child: const Text("lazy put example")),
              Padding(
                padding: const EdgeInsets.all(16),
                child: Center(
                  child: Text("Binding",
                      style: Theme.of(context).textTheme.headlineLarge),
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    Get.to(() => BindingHome());
                  },
                  child: const Text("binding example")),


            ],
          ),
        ),
      ),
    );
  }
}
