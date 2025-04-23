import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:musamakhalid/splash/splash_controller.dart';


class SplashView extends StatelessWidget {
  const SplashView({super.key});
  @override
  Widget build(BuildContext context) {
    return GetBuilder<SplashController>(builder: ((controller) {
      return  Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            const Spacer(),
            const Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // SvgPicture.asset(
                  //   "assets/images/svg/splash_logo.svg",
                  //   width: 150,
                  //   height: 150,
                  //   fit: BoxFit.cover,
                  // ),
                ],
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(bottom: 16.0),
              child: SvgPicture.asset(
                "assets/images/svg/Powered by Technupur.svg",
                width: 200,
                height: 30,
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
    }));
  }
}
