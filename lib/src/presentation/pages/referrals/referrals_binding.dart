import 'package:get/get.dart';

class ReferralsBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ReferralsBinding());
  }

}