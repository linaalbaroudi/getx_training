import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_training/utils/settingsServices.dart';

class SettingsController extends GetxController{

  RxBool isDark = false.obs;
  SettingsServices services = Get.find();

  switchTheme(){
    if (isDark.isTrue) {
      isDark.value = false;
    } else {
      isDark.value = true;
    }
    services.sharedPreferences.setBool("isDark", isDark.value);
  }

  switchLang(){
    Locale currentLocal = Get.locale ?? Get.deviceLocale!;
    if (currentLocal.languageCode.contains("en")){
      setLang("ar");
    }
    if (currentLocal.languageCode.contains("ar")){
      setLang("en");
    }
  }

  setLang(String langCode){
    Locale locale = Locale(langCode);
    Get.updateLocale(locale);
    services.sharedPreferences.setString("locale", langCode);
  }
}