import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_training/controller/calculator/calculator_getx_controller.dart';

class CalculatorGetx extends StatelessWidget {
  CalculatorGetx({super.key});

  CalculatorGetxController extController = Get.put(CalculatorGetxController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Calculator GetX"),
        foregroundColor: Theme.of(context).canvasColor,
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text("Number 1: ",
                      style: Theme.of(context).textTheme.headlineSmall),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: () {
                          extController.incrementN1();
                        },
                        icon: const Icon(
                          Icons.add,
                          size: 40,
                        ),
                      ),
                      GetX<CalculatorGetxController>(
                          init: CalculatorGetxController(),
                          builder: (controller) {
                            print("build number 1");
                            return Padding(
                              padding: const EdgeInsets.all(16.0),
                              // 5- call your value from controller
                              child: Text("${controller.number1.value}",
                                  style: const TextStyle(
                                    fontSize: 40,
                                  )),
                            );
                          }),
                      IconButton(
                        onPressed: () {
                          extController.decrementN1();
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text("Number 2: ",
                      style: Theme.of(context).textTheme.headlineSmall),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: () {
                          extController.incrementN2();
                        },
                        icon: const Icon(
                          Icons.add,
                          size: 40,
                        ),
                      ),
                      GetX<CalculatorGetxController>(
                          //init: CalculatorController(),
                          builder: (controller) {
                            print("build number 2");
                            return Padding(
                              padding: const EdgeInsets.all(16.0),
                              // 5- call your value from controller
                              child: Text("${controller.number2.value}",
                                  style: const TextStyle(
                                    fontSize: 40,
                                  )),
                            );
                          }),
                      IconButton(
                        onPressed: () {
                          extController.decrementN2();
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text("Sum: ",
                      style: Theme.of(context).textTheme.headlineSmall),
                  GetX<CalculatorGetxController>(
                      // init: CounterGetBuilderController(),
                      // Controllers need to be initialized only once
                      builder: (controller) {
                    print("build sum");
                    return Text("${controller.sum}",
                        style: const TextStyle(
                          fontSize: 40,
                        ));
                  }),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
