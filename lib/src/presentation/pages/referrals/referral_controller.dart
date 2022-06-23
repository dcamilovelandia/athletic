import 'package:athletic/src/core/imports/app_imports.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:share_plus/share_plus.dart';

class ReferralsController extends GetxController {

  /// controllers
  PageController pageController = PageController();
  ScrollController scrollController = ScrollController();

  /// variables
  int currentPage = 0;
  String affiliateCode = 'U8H6R3';
  List<Map<String, dynamic>> listOfReferrals = [{
    'username': '',
    'email': '',
    'phoneNumber': ''
  }];

  bool hasReferrals = false;

  /// change form page
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

  /// copy user referral code into clipboard
  onTapCopyReferralCode() async{
    await Clipboard.setData(ClipboardData(text: affiliateCode)).then((value) {
      showToast(message: 'Código copiado');
    });
  }

  /// share user code to another app
  onTapShareReferralCode() {
    Share.share('check out this promo code to athletic *$affiliateCode*');
  }

  /// add a new text group
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

  /// delete text group
  deleteTextFieldGroup({required Map<String,dynamic> object}) {
    listOfReferrals.remove(object);
    update(['referral_fields']);
  }

  /// update referral data map
  updateReferralMap({required int index, required Map<String, dynamic> data}) {
    listOfReferrals[index] = data;
    update(['referral_fields']);
  }

  /// send referrals data to server
  sendFormToServer() {
    globalBottomSheet(child: InfoPage());
  }

  /// show toast message
  showToast({required message}){
    Fluttertoast.showToast(
        msg: message ?? 'Error',
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        backgroundColor: blackUniverseColor,
        textColor: Colors.white,
        fontSize: 16.0
    );
  }

}