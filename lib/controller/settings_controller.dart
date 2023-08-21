import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_training/utils/settingsServices.dart';

class SettingsController extends GetxController{

  SettingsServices services = Get.find();

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

  switchTheme(){
    print("is dark ? ${Get.isDarkMode}");
    if(Get.isDarkMode){
      Get.changeTheme(ThemeData.light()); //TODO: make your custom light theme and use it here
    }else{
      Get.changeTheme(ThemeData.dark()); //TODO: make your custom dark theme and use it here
    }
  }
}