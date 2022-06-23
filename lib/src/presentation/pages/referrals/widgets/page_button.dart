// ignore_for_file: must_be_immutable

import 'package:athletic/src/core/imports/app_imports.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PageButton extends StatelessWidget {
  String title;
  Function() onTap;
  Color backgroundColor;
  Color textColor;
  PageButton({
  Key? key,
    required this.title,
    required this.onTap,
    required this.backgroundColor,
    required this.textColor
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedOnTapWidget(
      onTap: onTap,
      child: Container(
        height: 30,
        decoration: BoxDecoration(
          color: backgroundWhiteColor,
          boxShadow: globalShadow,
          borderRadius: globalRadius,
        ),
        child: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 5.h),
          decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: globalRadius,
          ),
          child: Text(
            title,
            style: textStyle(
                color:  textColor,
                size: 14
            ),
          ),
        ),
      ),
    );
  }
}