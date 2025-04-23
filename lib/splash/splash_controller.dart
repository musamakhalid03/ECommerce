import 'package:get/get.dart';
import 'package:musamakhalid/routes/app_routes.dart';

class SplashController extends GetxController {
  static SplashController instance = Get.find();

  @override
  void onInit() {
    super.onInit();
    navigateToHome();
  }

  void navigateToHome() async {
    await Future.delayed(const Duration(seconds: 3));
    Get.offNamed(AppRoutes.home);
  }
}
