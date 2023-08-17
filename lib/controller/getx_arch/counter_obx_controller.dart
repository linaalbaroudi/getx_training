import 'package:get/get.dart';

class CounterOBXController extends GetxController{
  RxInt counter = 0.obs;

  void increment(){
    counter++;
    // update();
  }

  void decrement(){
    counter--;
    // update();
  }
}