// ignore_for_file: file_names

import 'package:athletic/src/core/imports/app_imports.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ReferralDataTextField extends StatefulWidget {
  final Function(Map<String, dynamic>) onChange;
  const ReferralDataTextField({
    Key? key,
    required this.onChange
  }) : super(key: key);

  @override
  State<ReferralDataTextField> createState() => _ReferralDataTextFieldState();
}

class _ReferralDataTextFieldState extends State<ReferralDataTextField> {
  final TextEditingController username = TextEditingController();
  final TextEditingController email = TextEditingController();
  final TextEditingController phoneNumber = TextEditingController();
  final FocusNode usernameNode = FocusNode();
  final FocusNode emailNode = FocusNode();
  final FocusNode phoneNode = FocusNode();
  final ScreenUtil screenUtil = ScreenUtil();
  _fieldFocusChange(BuildContext context, FocusNode currentFocus, FocusNode nextFocus){
    currentFocus.unfocus();
    FocusScope.of(context).requestFocus(nextFocus);
  }
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: screenUtil.screenWidth,
      child: Form(
        autovalidateMode: AutovalidateMode.always,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              controller: username,
              focusNode: usernameNode,
              keyboardType: TextInputType.name,
              textInputAction: TextInputAction.next,
              onFieldSubmitted: (value){
                _fieldFocusChange(context, usernameNode, emailNode);
              },
              style: textStyle(
                  size: 13,
                  fontWeight: FontWeight.w500,
                  color: black
              ),
              decoration: InputDecoration(
                hintText: 'Nombre de tu amigo',
                hintStyle: textStyle(
                    size: 13,
                    fontWeight: FontWeight.w400,
                    color: black.withOpacity(0.5)
                ),
              ),
              onChanged: (value) {

              },
            ),
            15.verticalSpace,
            TextFormField(
              controller: email,
              focusNode: emailNode,
              keyboardType: TextInputType.emailAddress,
              textInputAction: TextInputAction.next,
              inputFormatters: [FilteringTextInputFormatter.deny(RegExp(r"\s\b|\b\s")),],
              onFieldSubmitted: (value){
                _fieldFocusChange(context, emailNode, phoneNode);
              },
              style: textStyle(
                  size: 13,
                  fontWeight: FontWeight.w500,
                  color: black
              ),
              decoration: InputDecoration(
                hintText: 'Correo electronico',
                hintStyle: textStyle(
                    size: 13,
                    fontWeight: FontWeight.w400,
                    color: black.withOpacity(0.5)
                ),
              ),
              onChanged: (value) {

              },
            ),
            15.verticalSpace,
            TextFormField(
              controller: phoneNumber,
              focusNode: phoneNode,
              keyboardType: TextInputType.number,
              textInputAction: TextInputAction.done,
              inputFormatters: [FilteringTextInputFormatter.allow(RegExp('[0-9]')),],
              onFieldSubmitted: (value){
                phoneNode.unfocus();
              },
              style: textStyle(
                  size: 13,
                  fontWeight: FontWeight.w500,
                  color: black
              ),
              decoration: InputDecoration(
                hintText: '(000) 000 00 00',
                hintStyle: textStyle(
                    size: 13,
                    fontWeight: FontWeight.w400,
                    color: black.withOpacity(0.5)
                ),
              ),
              onChanged: (value) {

              },
            )
          ],
        ),
      ),
    );
  }
}