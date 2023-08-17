import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_training/controller/getx_arch/counter_getBuilder_controller.dart';

class CounterDependencyInjection extends StatelessWidget {
  CounterDependencyInjection({super.key});

  // Get.put is similar when you say:   Controller ctr = Controller()
  // on closing the screen, the controller deletes the data from memory.
  // to make sure the state is not removed when you go in and out from screen, use   permanent:true
  CounterGetBuilderController extController = Get.put(CounterGetBuilderController(), permanent: true);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("permanent Counter with dependency injection", maxLines: 3,),
        foregroundColor: Theme.of(context).canvasColor,
        toolbarHeight: 90,
      ),
      body: SingleChildScrollView(
        child: SizedBox(
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
      ),
    );
  }
}
