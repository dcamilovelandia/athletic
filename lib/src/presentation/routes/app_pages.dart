import 'package:athletic/src/core/imports/app_imports.dart';
import 'package:get/route_manager.dart';

abstract class AppPages {
  static List<GetPage> get appPages => [
    GetPage(
        name: AppRoutes.referralsOnboardPage,
        page: () => ReferralsOnboardPage(),
        binding: ReferralsOnboardBinding()
    ),
    GetPage(
        name: AppRoutes.referralsPage,
        page: () => ReferralsPage(),
        binding: ReferralsBinding()
    )
  ];
}