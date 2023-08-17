import 'package:get/get.dart';

class CalculatorGetxController extends GetxController{
  RxInt number1 = 0.obs;
  RxInt number2 = 0.obs;

  // on calling one of these methods,
  // all getx widgets using the values that have changed will be rebuilt
  // NOTE --> getx widgets NOT using the changed values will NOT be rebuilt !!
  void incrementN1(){
    number1++;
  }

  void incrementN2(){
    number2++;
  }

  void decrementN1(){
    number1--;
  }

  void decrementN2(){
    number2--;
  }

  int get sum => number1.value.toInt() + number2.value.toInt() ;
}