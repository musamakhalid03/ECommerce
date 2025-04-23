import 'package:get/get.dart';
import 'package:musamakhalid/home/home_binding.dart';
import 'package:musamakhalid/home/home_view.dart';
import 'package:musamakhalid/routes/app_routes.dart';
import 'package:musamakhalid/splash/splash_binding.dart';
import 'package:musamakhalid/splash/splash_view.dart';

class AppPages {
  static final List<GetPage> pages = [
    GetPage(
      name: AppRoutes.splash,
      page: () => const SplashView(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: AppRoutes.home,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
  ];
}
