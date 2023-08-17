import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_training/controller/getx_arch/counter_getBuilder_controller.dart';
import 'package:getx_training/controller/getx_arch/counter_getx_controller.dart';

// GetX is very similar to GetBuilder in terms of syntax, but the approach is purely stream based.

// 1- no need for statefulWidget
class CounterGetx extends StatelessWidget {
  const CounterGetx({super.key});

  // 2- create controller and manage your values there
  // int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Counter Getx"),
        foregroundColor: Theme.of(context).canvasColor,
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // 3- user GetX<YourController>(builder: (controller) => YourWidget(),),
              GetX<CounterGetxController>(
                // 4- initiate your controller only once
                init: CounterGetxController(),
                builder: (controller) => Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: (){
                        // 5- call your method from controller
                        controller.increment();
                      },
                      icon: const Icon(Icons.add, size: 40,),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      // 5- call your value from controller.counter.value
                      child: Text("${controller.counter.value}", style: const TextStyle(fontSize: 40,)),
                    ),
                    IconButton(
                      onPressed: (){
                        // 5- call your method from controller
                        controller.decrement();
                      },
                      icon: const Icon(Icons.remove, size: 40,),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
