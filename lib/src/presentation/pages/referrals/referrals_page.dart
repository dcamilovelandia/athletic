import 'package:athletic/src/core/imports/app_imports.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class ReferralsPage extends StatelessWidget {
  const ReferralsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ReferralsController>(
      init: ReferralsController(),
      builder: (_) => Scaffold(),
    );
  }
}
