import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ReferralsController extends GetxController {

  /// variables
  PageController pageController = PageController();
  int currentPage = 0;
  String affiliateCode = 'U8H6R3';
  List<Map<String, dynamic>> listOfReferrals = [{}, {}, {}];

  changePage({required int page}) {
    currentPage = page;
    update(['changePage']);
    if(page == 1) {
      pageController.animateToPage(
          page,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeInOut
      );
      update(['changePage']);
    } else {
      pageController.animateToPage(
          page,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeInOut
      );
      update(['changePage']);
    }
  }

  onTapCopyReferralCode() {

  }

  onTapShareReferralCode() {

  }


}