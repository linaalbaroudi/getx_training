import 'package:get/get.dart';

class ArgumentsController extends GetxController{
  late DateTime date;
  late String preRoute;
  late String currentRoute;

  @override
  void onInit() {
    date = Get.arguments["date"] ?? DateTime.now();
    preRoute = Get.previousRoute;
    currentRoute = Get.routing.current;
    super.onInit();
  }
}