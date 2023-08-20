import 'package:flutter/material.dart';
// 1- add get: to pubspec.yaml and import package
import 'package:get/get.dart';
import 'package:getx_training/utils/bindings.dart';
import 'package:getx_training/view/getx_arch/counter_getBuilder.dart';
import 'package:getx_training/view/getx_arch/counter_getx.dart';
import 'view/home.dart';
import 'view/navigation/page1.dart';
import 'view/navigation/page2.dart';
import 'view/navigation/page3.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // 2- replace MaterialApp with GetMaterialApp
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple, primary: Colors.deepPurple),
        useMaterial3: true,
        appBarTheme: AppBarTheme(
          foregroundColor: Theme.of(context).canvasColor,
          color: Colors.deepPurple
        ),
      ),
      home: const Home(),
      initialRoute: "/",
      // routes: {
      //   "/home": (context) => const Home(),
      // },
      // 3- replace routes: {} with getPages:[]
      getPages: [
        // add initial bindings in 3 ways:
        // 1- in the root page GetPage(name: "/", page: ()=> const Home(), binding: AppBindings()),
        // 2- or through the initialBinding parameter
        // 3- or through navigation Get.to(() => Home(), binding: AppBindings());
        GetPage(name: "/", page: ()=> const Home(), ), //binding: AppBindings()),
        GetPage(name: "/page1", page: () => const Page1()),
        GetPage(name: "/page2", page: () => const Page2()),
        GetPage(name: "/page3", page: () => const Page3()),
        GetPage(name: "/counterGetBuilder", page: () => const CounterGetBuilder()),
        GetPage(name: "/counterGetx", page: () => const CounterGetx()),
      ],
      // initialBinding: AppBindings(),
    );
  }
}
