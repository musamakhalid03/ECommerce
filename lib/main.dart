import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:musamakhalid/helper/loading.dart';
import 'package:musamakhalid/routes/app_pages.dart';
import 'package:musamakhalid/splash/splash_binding.dart';
import 'package:musamakhalid/splash/splash_view.dart';

void main() async {
  runApp(const MyApp());
  EasyLoading.init();
  await LoadingHelper.init();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "ECommerce App",
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        textTheme: GoogleFonts.montserratTextTheme(
          Theme.of(context).textTheme,
        ),
        primaryTextTheme: GoogleFonts.montserratTextTheme(
          Theme.of(context).primaryTextTheme,
        ),
        appBarTheme: AppBarTheme(
          titleTextStyle: GoogleFonts.montserrat(),
        ),
      ),
      initialBinding: SplashBinding(),
      home: const SplashView(),
      builder: EasyLoading.init(),
      getPages: AppPages.pages,
    );
  }
}
