import 'package:athletic/src/core/imports/app_imports.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ReferralsOnboardController extends GetxController {

  /// variables
  PageController pageController = PageController();
  int page = 0;
  double indicatorValue = 0.25;

  /// get indicator value by current page
  changePage() {
    if(page == 2) {
      /// go to referral page
      goToReferralsPage();
    } else{
      page += 1;
      pageController.animateToPage(
          page,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeInOut
      );
      if(page == 0) {
        indicatorValue = 0.33;
        update();
      } else if(page == 1) {
        indicatorValue = 0.66;
        update();
      } else {
        indicatorValue = 1;
        update();
      }
    }
  }

  goToReferralsPage() => Get.offAndToNamed(AppRoutes.referralsPage);
}