import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';


class SettingsServices extends GetxService{
  late SharedPreferences sharedPreferences;

  Locale locale = const Locale("en");

  Future<SettingsServices> init() async {
    sharedPreferences = await SharedPreferences.getInstance();
    locale = sharedPreferences.getString("locale") == null ? Get.deviceLocale! : Locale(sharedPreferences.getString("locale")!);
    return this;
  }
}