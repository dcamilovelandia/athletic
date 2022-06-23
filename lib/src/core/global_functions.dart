import 'package:flutter/material.dart';
import 'package:get/get.dart';

/// show getx bottom sheet
globalBottomSheet(
    {required Widget child,
      bool isScrollable = true,
      bool isDismissible = true,
      bool enableDrag = true}) {
  Get.bottomSheet(
    child,
    isScrollControlled: isScrollable,
    enableDrag: enableDrag,
    isDismissible: isDismissible,
  );
}