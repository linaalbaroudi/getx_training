import 'package:get/get.dart';

class CounterGetBuilderController extends GetxController{
  int counter = 0;

  void increment(){
    counter++;
    update();
  }

  void decrement(){
    counter--;
    update();
  }

  @override
  void onInit() {
    print("onInit called. \non initializing controller - before building the widget");
    print("fetch the data here from database. BUT, on initial binding -> use lazyPut with fenix = true to prevent heavy load ");
    super.onInit();
  }

  @override
  void onReady() {
    print("onReady called. \nwhen the controller is ready - after building the widget");
    super.onReady();
  }

  @override
  void onClose() {
    print("onClose called. \ngetting out of the screen");
    super.onClose();
  }
}