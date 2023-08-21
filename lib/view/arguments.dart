import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_training/controller/arguments_controller.dart';

class Arguments extends StatelessWidget {
  const Arguments({super.key});

  @override
  Widget build(BuildContext context) {
    ArgumentsController controller = Get.put(ArgumentsController());
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        foregroundColor: Theme.of(context).canvasColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text("yesterday date is ${controller.date}", style: Theme.of(context).textTheme.bodyLarge),
            Divider(),
            Text("previous route is ${controller.preRoute}", style: Theme.of(context).textTheme.bodyLarge),
            Divider(),
            Text("current route is ${controller.currentRoute}", style: Theme.of(context).textTheme.bodyLarge),
            Divider(),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Center(
                child: Text("dialog, snackbar, bottomSheet",
                    style: Theme.of(context).textTheme.headlineLarge),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Get.defaultDialog(
                  // customize your dialog here
                );
                print("is Dialog Open ? ${Get.isDialogOpen!}");
              },
              child: const Text("show Dialog"),
            ),
            ElevatedButton(
              onPressed: () {
                Get.snackbar("Hello There!", "I can show SnackBars too",
                  // customize your snackbar
                );
                print("is Snack Bar Open ? ${Get.isSnackbarOpen}");
              },
              child: const Text("show SnackBar"),
            ),
            ElevatedButton(
              onPressed: () {
                Get.bottomSheet(
                  Container(
                    height: 100,
                    width: double.infinity,
                    color: Theme.of(context).canvasColor,
                    child: Center(child: const Text("Hello There!")),
                  ),
                  // customize your snackbar
                );
                print("is Bottom Sheet Open ? ${Get.isBottomSheetOpen}");
              },
              child: const Text("show BottomSheet"),
            ),
          ],
        ),
      ),
    );
  }
}
