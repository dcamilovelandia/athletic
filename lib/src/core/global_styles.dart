import 'package:flutter/material.dart';

TextStyle textStyle(
    {Color? color, FontWeight? fontWeight, double? size}) {
  return TextStyle(
      fontSize: size ?? 12.0,
      fontFamily: 'LexendRegular',
      fontStyle: FontStyle.normal,
      fontWeight: fontWeight ?? FontWeight.w300,
      color: color ?? Colors.black
  );
}

/// span without bold text
TextSpan subTitleSpan({required subTitle, Color? textColor}) {
  return TextSpan(
      text: subTitle,
      style: textStyle(
          color: textColor ?? Colors.white,
          fontWeight: FontWeight.w400,
          size: 14
      )
  );
}
/// span with bold text
TextSpan subTitleBoldSpan({required subTitle, Color? textColor}) {
  return TextSpan(
      text: subTitle,
      style: textStyle(
          color: textColor ?? Colors.white,
          fontWeight: FontWeight.w600,
          size: 14
      )
  );
}