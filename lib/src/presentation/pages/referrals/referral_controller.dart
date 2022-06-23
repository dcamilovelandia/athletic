import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ReferralsController extends GetxController {

  /// variables
  PageController pageController = PageController();
  ScrollController scrollController = ScrollController();
  int currentPage = 0;
  String affiliateCode = 'U8H6R3';
  List<Map<String, dynamic>> listOfReferrals = [{
    'username': '',
    'email': '',
    'phoneNumber': ''
  }];

  bool hasReferrals = false;

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

  addTextFieldGroup() {
    listOfReferrals.add({
      'username': '',
      'email': '',
      'phoneNumber': ''
    });
    Future.delayed(const Duration(milliseconds: 200), () => scrollController.animateTo(
        scrollController.position.maxScrollExtent,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut)
    );
    update(['referral_fields']);
  }

  deleteTextFieldGroup({required Map<String,dynamic> object}) {
    listOfReferrals.remove(object);
    update(['referral_fields']);
  }

  updateReferralMap({required int index, required Map<String, dynamic> data}) {
    listOfReferrals[index] = data;
    update(['referral_fields']);
  }

  sendFormToServer() {

  }

}