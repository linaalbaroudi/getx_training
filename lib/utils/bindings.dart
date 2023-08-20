import 'package:get/get.dart';
import 'package:getx_training/controller/getx_arch/counter_getBuilder_controller.dart';

class AppBindings extends Bindings {
  @override
  void dependencies() {
    // try these
    // Get.put(CounterGetBuilderController());
    // Get.put(CounterGetBuilderController(), permanent: true);
    Get.lazyPut(() => CounterGetBuilderController(), fenix: true);
  }
}