// ignore_for_file: file_names

import 'package:athletic/src/core/imports/app_imports.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ReferralDataTextField extends StatefulWidget {
  final Function(Map<String, dynamic>) onChange;
  final Map<String, dynamic> data;
  const ReferralDataTextField({
    Key? key,
    required this.onChange,
    required this.data
  }) : super(key: key);

  @override
  State<ReferralDataTextField> createState() => _ReferralDataTextFieldState();
}

class _ReferralDataTextFieldState extends State<ReferralDataTextField> {

  /// controller
  final TextEditingController username = TextEditingController();
  final TextEditingController email = TextEditingController();
  final TextEditingController phoneNumber = TextEditingController();
  /// focus node
  final FocusNode usernameNode = FocusNode();
  final FocusNode emailNode = FocusNode();
  final FocusNode phoneNode = FocusNode();
  final ScreenUtil screenUtil = ScreenUtil();
  /// keys
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  /// variables
  String currentUsername = '';
  String currentEmail = '';
  String currentPhone = '';

  /// methods
  _fieldFocusChange(BuildContext context, FocusNode currentFocus, FocusNode nextFocus){
    currentFocus.unfocus();
    FocusScope.of(context).requestFocus(nextFocus);
  }

  _validateFields(String? value) {
    if(value == null || value.isEmpty) {
      return '';
    } else {
      return null;
    }
  }

  _onChange(String value) {
    widget.onChange({
      'username': username.text.trim(),
      'email': email.text.trim(),
      'phoneNumber': phoneNumber.text.trim(),
      'validate' : formKey.currentState!.validate()
    });
  }

  _onDelete() {
    if(widget.data['username'] != username.text.trim()) {
      username.text = widget.data['username'];
      email.text = widget.data['email'];
      phoneNumber.text = widget.data['phoneNumber'];
    }
  }
  @override
  Widget build(BuildContext context) {
    _onDelete();
    return SizedBox(
      width: screenUtil.screenWidth,
      child: Form(
        autovalidateMode: AutovalidateMode.always,
        key: formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
                controller: username,
                focusNode: usernameNode,
                keyboardType: TextInputType.name,
                textInputAction: TextInputAction.next,
                onFieldSubmitted: (value) => _fieldFocusChange(context, usernameNode, emailNode),
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
                    errorBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: blackUniverseColor.withOpacity(0.4))
                    )
                ),
                onChanged: _onChange,
                validator: (value) => _validateFields(value)
            ),
            15.verticalSpace,

            TextFormField(
              controller: email,
              focusNode: emailNode,
              keyboardType: TextInputType.emailAddress,
              textInputAction: TextInputAction.next,
              inputFormatters: [FilteringTextInputFormatter.deny(RegExp(r"\s\b|\b\s")),],
              onFieldSubmitted: (value) => _fieldFocusChange(context, emailNode, phoneNode),
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
                  errorBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: blackUniverseColor.withOpacity(0.4))
                  )
              ),
              onChanged: _onChange,
              validator: (value) => _validateFields(value),
            ),
            15.verticalSpace,

            TextFormField(
              controller: phoneNumber,
              focusNode: phoneNode,
              keyboardType: TextInputType.number,
              textInputAction: TextInputAction.done,
              inputFormatters: [FilteringTextInputFormatter.allow(RegExp('[0-9]')),],
              onFieldSubmitted: (value) => phoneNode.unfocus(),
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
                  errorBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: blackUniverseColor.withOpacity(0.4))
                  )
              ),
              onChanged: _onChange,
              validator: (value) => _validateFields(value),
            )
          ],
        ),
      ),
    );
  }
}