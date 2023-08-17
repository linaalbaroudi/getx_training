import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_training/controller/getx_arch/counter_getBuilder_controller.dart';

// GetBuilder can be wrapped over any widget to make it interact with the methods
// and variables of the controller. We'll be able to call functions, listen to state changes
// GetBuilder is fast and has low memory footprint, but, it's not reactive.

// 1- no need for statefulWidget
class CounterGetBuilder extends StatelessWidget {
  const CounterGetBuilder({super.key});

  // 2- create controller and manage your values there
  // int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Counter GetBuilder"),
        foregroundColor: Theme.of(context).canvasColor,
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // 3- user GetBuilder<YourController>(builder: (controller) => YourWidget(),),
              GetBuilder<CounterGetBuilderController>(
                  // 4- initiate your controller only once
                  init: CounterGetBuilderController(),
                  builder: (controller) {
                    print("rebuild CounterGetBuilder");
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          onPressed: () {
                            // setState(() {
                            //   counter++;
                            // });
                            // 5- call your method from controller
                            controller.increment();
                          },
                          icon: const Icon(
                            Icons.add,
                            size: 40,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          // 5- call your value from controller
                          child: Text("${controller.counter}",
                              style: const TextStyle(
                                fontSize: 40,
                              )),
                        ),
                        IconButton(
                          onPressed: () {
                            // setState(() {
                            //   counter--;
                            // });
                            // 5- call your method from controller
                            controller.decrement();
                          },
                          icon: const Icon(
                            Icons.remove,
                            size: 40,
                          ),
                        ),
                      ],
                    );
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
