import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:musamakhalid/routes/app_pages.dart';
import 'package:musamakhalid/splash/splash_binding.dart';
import 'package:musamakhalid/splash/splash_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: " ECommerce App",
      initialBinding: SplashBinding(),
      home: const SplashView(),
      getPages: AppPages.pages,
    );
  }
}
