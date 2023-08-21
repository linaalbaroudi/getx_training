import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FallBackMiddleWare extends GetMiddleware{

  @override
  int? get priority => 2;

  @override
  RouteSettings? redirect(String? route) {
    // change to ture to check priority
      if (false) return const RouteSettings(name: "/fallback");
  }
}