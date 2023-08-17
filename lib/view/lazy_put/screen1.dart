import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_training/controller/getx_arch/counter_getBuilder_controller.dart';

class Screen1 extends StatelessWidget {
   Screen1({super.key});

  // final  extController = Get.put(CounterGetBuilderController(), permanent: true);
   CounterGetBuilderController extController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Lazy put - screen 1"),
        foregroundColor: Theme.of(context).canvasColor,
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {
                    // use injected controller to call function
                    extController.increment();
                  },
                  icon: const Icon(
                    Icons.add,
                    size: 40,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  // wrap the widget related to the changed value with GetBuilder
                  child: GetBuilder<CounterGetBuilderController>(
                    // no need to initialize
                      builder: (controller) {
                        print("rebuild CounterGetBuilder");
                        return Text("${controller.counter}",
                            style: const TextStyle(
                              fontSize: 40,
                            ));
                      }),
                ),
                IconButton(
                  onPressed: () {
                    // use injected controller to call function
                    extController.decrement();
                  },
                  icon: const Icon(
                    Icons.remove,
                    size: 40,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
