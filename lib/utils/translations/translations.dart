import 'package:get/get.dart';
import 'package:getx_training/utils/translations/ar.dart';
import 'package:getx_training/utils/translations/en.dart';

class AppTranslations extends Translations{
  @override
  // TODO: implement keys
  Map<String, Map<String, String>> get keys => {
    "ar" : ArTranslations().ar,
    "en" : EngTranslations().en
  };
}