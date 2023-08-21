import 'package:flutter/material.dart';
// 1- add get: to pubspec.yaml and import package
import 'package:get/get.dart';
import 'package:getx_training/utils/auth_middleware.dart';
import 'package:getx_training/utils/fallback_middleware.dart';
import 'package:getx_training/utils/settingsServices.dart';
import 'package:getx_training/utils/translations/translations.dart';
import 'package:getx_training/view/getx_arch/counter_getBuilder.dart';
import 'package:getx_training/view/getx_arch/counter_getx.dart';
import 'package:getx_training/view/login.dart';
import 'view/admin.dart';
import 'view/fallback_screen.dart';
import 'view/home.dart';
import 'view/navigation/page1.dart';
import 'view/navigation/page2.dart';
import 'view/navigation/page3.dart';

// auth middleware step 1: define global variable and make it nullable
// SharedPreferences? sharedPreferences;
// define it is Settings services for cleaner code

// auth middleware step 2: add async to main, WidgetsFlutterBinding.ensureInitialized();, and SharedPreferences.getInstance();
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  // sharedPreferences = await SharedPreferences.getInstance();
  // define it is Settings services for cleaner code
  await initialServices();
  runApp(const MyApp());
}

Future initialServices() async {
  await Get.putAsync(() => SettingsServices().init());
}

class MyApp extends GetView<SettingsServices> {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // 2- replace MaterialApp with GetMaterialApp
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData( // TODO: make your custom light theme and use it here
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple, primary: Colors.deepPurple),
        useMaterial3: true,
        appBarTheme: AppBarTheme(
            foregroundColor: Theme.of(context).canvasColor,
            color: Colors.deepPurple
        ),
      ),

      darkTheme: ThemeData.dark().copyWith( //TODO: make your custom dark theme and use it here
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple, primary: Colors.deepPurple),
        useMaterial3: true,
        appBarTheme: AppBarTheme(
            foregroundColor: Theme.of(context).canvasColor,
            color: Colors.deepPurple
        ),
      ),
      locale: controller.locale,
      translations: AppTranslations(),
      // home: const Home(), // auth middleware step 3: don't add home when using middleware
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
        GetPage(name: "/", page: ()=> const Login(), middlewares: [
          AuthMiddleWare(),
          FallBackMiddleWare(),
        ]), // auth middleware step 4: add login and home to routes and the middlewares
        GetPage(name: "/home", page: ()=> Home(), ), //binding: AppBindings()), // auth middleware
        GetPage(name: "/admin", page: ()=> const Admin(), ),
        GetPage(name: "/fallback", page: ()=> const FallbackScreen(), ),
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
