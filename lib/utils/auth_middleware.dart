import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_training/main.dart';

class AuthMiddleWare extends GetMiddleware{

  @override
  int? get priority => 1;

  @override
  RouteSettings? redirect(String? route) {
    if (sharedPreferences!.getString("userID") != null) {
      if (sharedPreferences!.getString("role") == "user") return const RouteSettings(name: "/home");
      if (sharedPreferences!.getString("role") == "admin") return const RouteSettings(name: "/admin");
    }
  }
}