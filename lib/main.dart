import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'app/routes/app_pages.dart';
import 'app/theme/app_theme.dart';
import 'app/translations/app_translations.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    print('Locale: ' + Get.deviceLocale.toString());
    return GetMaterialApp(
      initialRoute: Routes.INITIAL,
      theme: appThemeData,
      getPages: AppPages.pages,
      locale: Get.deviceLocale,
      translationsKeys: AppTranslation.translations,
    );
  }
}
