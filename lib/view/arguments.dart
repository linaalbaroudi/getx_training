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
          ],
        ),
      ),
    );
  }
}
