import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vamidzo/controllers/navigation_controller.dart';
import 'package:vamidzo/helpers/themes/dark.dart';
import 'package:vamidzo/helpers/themes/light.dart';
import 'package:vamidzo/modules/courses/course_main.dart';
import 'package:vamidzo/modules/dashboard/dashboard.dart';
import 'package:vamidzo/modules/settings/settings.dart';
import 'package:vamidzo/modules/wallet/wallet_main.dart';
import 'package:vamidzo/modules/wrapper/app_wrapper.dart';

void main() {
  runApp(const VamidzoApp());
}

class VamidzoApp extends StatelessWidget {
  const VamidzoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      theme: lightTheme,
      darkTheme: darkTheme,
      navigatorKey: Get.key,
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => VamidzoAppWrapper()),
        GetPage(name: '/dashboard', page: () => VamidzoDashboard()),
        GetPage(name: '/courses', page: () => VamidzoCourseMain()),
        GetPage(name: '/wallet', page: () => VamidzoWalletMain()),
        GetPage(name: '/profile', page: () => VamidzoProfileMain()),
      ],
      unknownRoute: GetPage(name: '/unknow', page: () => Container()),
    );
  }
}
