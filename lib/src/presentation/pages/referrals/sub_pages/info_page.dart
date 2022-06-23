import 'package:athletic/src/core/imports/app_imports.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class InfoPage extends StatelessWidget {
  const InfoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ScreenUtil screenUtil = ScreenUtil();
    return Container(
      height: screenUtil.screenHeight * 0.5,
      decoration: BoxDecoration(
        color: backgroundWhiteColor,
        borderRadius: globalRadius,
      ),
    );
  }
}
