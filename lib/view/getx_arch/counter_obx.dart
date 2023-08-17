import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_training/controller/getx_arch/counter_getBuilder_controller.dart';
import 'package:getx_training/controller/getx_arch/counter_getx_controller.dart';
import 'package:getx_training/controller/getx_arch/counter_obx_controller.dart';

// Obx - simplest syntax and implementation. All we’ve to do is wrap the widget in Obx(() ⇒ ) and we're done!
// The syntax is shorter than setState, though there's one extra step here.
// We need to initialize the Controller to use our variables and methods.
// Controller controller = Get.put(Controller());

class CounterOBX extends StatelessWidget {
  CounterOBX({super.key});

  final CounterOBXController controller = Get.put(CounterOBXController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Counter Obx"),
        foregroundColor: Theme.of(context).canvasColor,
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // 2- Obx(() ⇒ )
              Obx(() => Row(
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
