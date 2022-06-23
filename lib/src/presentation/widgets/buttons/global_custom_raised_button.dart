import 'package:athletic/src/core/imports/app_imports.dart';
import 'package:flutter/material.dart';

class GlobalCustomRaisedButton extends StatelessWidget {
  final String buttonText;
  final Color textColor;
  final Color color;
  final Function() onPress;
  final Color? borderColor;
  final TextStyle? textStyle;
  final double? width;
  final bool enabled;
  final Color shadowColor;

  const GlobalCustomRaisedButton(
      {Key? key,
        required this.buttonText,
        required this.textColor,
        required this.color,
        required this.onPress,
        this.borderColor,
        this.width = 152,
        this.textStyle,
        this.enabled = true,
        this.shadowColor = Colors.transparent})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return AnimatedOnTapWidget(
      enabled: enabled,
      onTap: onPress,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: globalRadius,
            color: enabled ? color : pearlShineColor,
            border: borderColor != null ? Border.all(color: borderColor!) : null,
            boxShadow: [BoxShadow(
                color: shadowColor,
                offset: const Offset(0, 1),
                spreadRadius: 0.1,
                blurRadius: 0.1
            )]),
        child: ConstrainedBox(
          constraints: BoxConstraints.tightFor(width: width, height: 50),
          child: Center(
            child: Text(
              buttonText,
              style: textStyle ?? TextStyle(color: textColor),
            ),
          ),
        ),
      ),
    );
  }
}