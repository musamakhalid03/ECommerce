import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:musamakhalid/utils/colors/colors.dart';

class LoadingHelper {
  static bool absorbClick = false;

  static show() {
    absorbClick = true;
    EasyLoading.show();
  }

  static dismiss() {
    absorbClick = false;
    EasyLoading.dismiss();
  }

  static init() {
    EasyLoading.instance
      ..displayDuration = const Duration(milliseconds: 2000)
      ..indicatorType = EasyLoadingIndicatorType.circle
      ..loadingStyle = EasyLoadingStyle.custom
      ..indicatorSize = 50.0
      ..radius = 10.0
      ..progressColor = Colors.white
      ..backgroundColor = Colors.transparent
      ..indicatorColor = AppColors.primaryColor
      ..textColor = AppColors.primaryColor
      ..maskColor = AppColors.primaryColor.withOpacity(0.5)
      ..userInteractions = false
      ..dismissOnTap = false
      ..boxShadow = <BoxShadow>[];
  }
}
