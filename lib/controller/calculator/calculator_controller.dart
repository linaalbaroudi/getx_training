import 'package:get/get.dart';

class CalculatorController extends GetxController{
  int number1 = 0;
  int number2 = 0;

  // update() rebuilds all GetBuilder widgets calling the controller
  void incrementN1(){
    number1++;
    update();
  }

  void incrementN2(){
    number2++;
    update();
  }

  void decrementN1(){
    number1--;
    update();
  }

  void decrementN2(){
    number2--;
    update();
  }

  int get sum => number1 + number2;
}