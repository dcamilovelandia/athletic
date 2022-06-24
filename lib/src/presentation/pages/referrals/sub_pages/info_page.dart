import 'package:athletic/src/core/imports/app_imports.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class InfoPage extends StatelessWidget {
  final String title;
  final String subtitle;
  final String? invitationCode;
  final List<Map<String, dynamic>>? invalidUsers;
  final String? message;
  final bool invalidReferral;
  final bool invitationSend;
  final bool referralError;
  final bool editMessage;
  final Function()? onTap;
  final ReferralsController? referralsController;
  const InfoPage({
    Key? key,
    required this.title,
    required this.subtitle,
    this.invitationCode,
    this.invalidUsers,
    this.message,
    this.invalidReferral = false,
    this.invitationSend = false,
    this.referralError = false,
    this.editMessage = false,
    this.onTap,
    this.referralsController
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ScreenUtil screenUtil = ScreenUtil();
    final TextEditingController textEditingController = TextEditingController(
      text: 'Si compras por la pagina web un plan Atletic, usando el siguiente código, tanto tú como yo, obtendremos ¡un (1) mes gratis!'
    );
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Container(
        height: referralError ? screenUtil.screenHeight * 0.3 : screenUtil.screenHeight * 0.52,
        decoration: BoxDecoration(
          color: backgroundWhiteColor,
          borderRadius: globalRadius,
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 80.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              30.verticalSpace,
              /// drag indicator
              Container(
                width: 200.w,
                height: 10.h,
                decoration: BoxDecoration(
                  color: greyUniverseColor,
                  borderRadius: globalRadius,
                  boxShadow: globalShadow,
                ),
              ),
              40.verticalSpace,
              /// title
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  title,
                  style: textStyle(
                      size: 22,
                      fontWeight: FontWeight.w600
                  ),
                ),
              ),
              30.verticalSpace,
              Expanded(
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: Column(
                    children: [
                      Text(
                        subtitle,
                        style: textStyle(
                            size: 13,
                            fontWeight: FontWeight.w400
                        ),
                      ),
                      30.verticalSpace,
                      if(invalidReferral && ! invitationSend && !referralError && !editMessage)
                        _referralsList(withEmail: true),
                      if(invitationSend && !referralError && !editMessage && !invalidReferral)
                        _referralsList(),
                      if(referralError && !editMessage && !invalidReferral && !invitationSend)
                        Column(
                          children: [
                            30.verticalSpace,
                            GlobalCustomRaisedButton(
                              onPress: onTap!,
                              color: redEuphoriaColor,
                              textColor: Colors.white,
                              buttonText: 'Ver planes',
                              width: double.infinity,
                            ),],
                        ),
                      if(editMessage && !invalidReferral && !invitationSend && !referralError)
                        _invitationMessage(controller: textEditingController)
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _referralsList({bool withEmail = false}){
    return Column(
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 50.w, vertical: 25.h),
          decoration: BoxDecoration(
              color: pearlShineColor,
              borderRadius: globalRadius,
              boxShadow: globalShadow
          ),
          child: Column(
            children: [
              if(invalidUsers != null && invalidUsers!.isNotEmpty)
                ...invalidUsers!.map((user) => Padding(
                  padding: EdgeInsets.symmetric(vertical: 15.h),
                  child: Row(
                      children: [
                        SizedBox(
                          height: withEmail ? 30 : 22,
                          width: withEmail ? 30 : 22,
                          child: withEmail ? icoEmail(color: blackUniverseColor) : icoUser(color: blackUniverseColor),
                        ),
                        40.horizontalSpace,
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              user['name'],
                              overflow: TextOverflow.ellipsis,
                              style: textStyle(
                                  fontWeight: FontWeight.w600,
                                  size: 13
                              ),
                            ),
                            if(withEmail)
                              Text(
                                user['email'],
                                overflow: TextOverflow.ellipsis,
                                style: textStyle(
                                    size: 11
                                ),
                              ),
                          ],
                        )
                      ]
                  ),
                ))
            ],
          ),
        ),
        60.verticalSpace,
        GlobalCustomRaisedButton(
          onPress: () =>  Get.back(),
          color: redEuphoriaColor,
          textColor: Colors.white,
          buttonText: 'Volver',
          width: double.infinity,
        ),
        60.verticalSpace,
      ],
    );
  }

  Widget _invitationMessage({required TextEditingController controller}) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: 50.w, vertical: 25.h),
          decoration: BoxDecoration(
              color: pearlShineColor,
              borderRadius: globalRadius,
              boxShadow: globalShadow
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '(Edita este mesaje)',
                style: textStyle(
                  size: 13
                ),
              ),
              30.verticalSpace,
              Text(
                'Hola',
                style: textStyle(
                    size: 13,
                  fontWeight: FontWeight.w600
                ),
              ),
              10.verticalSpace,
              TextField(
                controller: controller,
                maxLines: 4,
                style: textStyle(size: 13),
                decoration: const InputDecoration(border: InputBorder.none),
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 22,
                    width: 22,
                    child: icoAthletic(color: blackUniverseColor),
                  ),
                  20.horizontalSpace,
                  Text(
                    'Código: $invitationCode',
                    style: textStyle(fontWeight: FontWeight.w600),
                  )
                ],
              )
            ],
          ),
        ),
        60.verticalSpace,
        GlobalCustomRaisedButton(
          onPress: () {
            String message = '*Hola*\n'
                '${controller.text}\n'
                '*Código: $invitationCode*';
            referralsController!.onTapCopyReferralCode(message: message);
            Get.back();
          },
          color: redEuphoriaColor,
          textColor: Colors.white,
          buttonText: 'Copiar',
          width: double.infinity,
        )
      ],
    );
  }

}