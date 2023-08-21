import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_training/utils/settingsServices.dart';

class AuthMiddleWare extends GetMiddleware{

  @override
  int? get priority => 1;

  SettingsServices services = Get.find();

  @override
  RouteSettings? redirect(String? route) {
    if (services.sharedPreferences.getString("userID") != null) {
      if (services.sharedPreferences.getString("role") == "user") return const RouteSettings(name: "/home");
      if (services.sharedPreferences.getString("role") == "admin") return const RouteSettings(name: "/admin");
    }
    return null;
  }
}