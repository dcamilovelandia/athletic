import 'package:athletic/src/core/imports/app_imports.dart';
import 'package:get/get.dart';

class ReferralsOnboardBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ReferralsOnboardController());
  }

}