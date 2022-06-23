import 'package:athletic/src/core/imports/app_imports.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ReferralPage extends StatelessWidget {
  const ReferralPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ScreenUtil screenUtil = ScreenUtil();
    return GetBuilder<ReferralsController>(
      id: 'referral_page',
      builder: (_) => Padding(
        padding: EdgeInsets.symmetric(vertical: 30.h),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          controller: _.scrollController,
          child: Column(
            children: [
              20.verticalSpace,
              /// introduction title
              RichText(
                text: TextSpan(
                    children: [
                      subTitleSpan(
                          textColor: black,
                          subTitle: 'Con este código puedes referir a todos tus amigos y conocidos para que vivan la '),
                      subTitleBoldSpan(textColor: black,subTitle: 'experiencia Athletic '),
                      subTitleSpan(
                          textColor: black,
                          subTitle: 'Recuerda que entre más personas refieras, tienes más posibilidades de ganar meses de entrenamiento.'),
                    ]
                ),
              ),
              80.verticalSpace,

              /// cody / copy / share
              Row(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  /// subtitle
                  Container(
                    alignment: Alignment.centerLeft,
                    width: (screenUtil.screenWidth / 3) - 160.w,
                    child: Text(
                      'Código',
                      style: textStyle(
                          size: 15,
                          fontWeight: FontWeight.w600
                      ),
                    ),
                  ),
                  /// code
                  Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.symmetric(vertical: 10.h),
                      color: pearlShineColor,
                      child: Text(
                        _.affiliateCode,
                        style: textStyle(
                            size: 15,
                            fontWeight: FontWeight.w600
                        ),
                      ),
                    ),
                  ),
                  /// buttons
                  Container(
                    alignment: Alignment.centerRight,
                    width: (screenUtil.screenWidth / 3) - 160.w,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        AnimatedOnTapWidget(
                          onTap: _.onTapCopyReferralCode,
                          child: SizedBox(
                            height: 24,
                            width: 24,
                            child: icoCopy(),
                          ),
                        ),
                        20.horizontalSpace,
                        AnimatedOnTapWidget(
                          onTap: _.onTapShareReferralCode,
                          child: SizedBox(
                            height: 24,
                            width: 24,
                            child: icoShare(),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              60.verticalSpace,

              /// referral textFields
              GetBuilder<ReferralsController>(
                id: 'referral_fields',
                builder: (_) => SizedBox(
                  width: screenUtil.screenWidth,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ..._.listOfReferrals.map((e) {
                        final int index = _.listOfReferrals.indexOf(e);
                        return Padding(
                          padding: EdgeInsets.symmetric(vertical: 30.h),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Amigo ${index + 1}',
                                    style: textStyle(
                                        size: 13,
                                        fontWeight: FontWeight.w600
                                    ),
                                  ),
                                  if(index != 0)
                                    Padding(
                                      padding: EdgeInsets.only(bottom: 10.h),
                                      child: SizedBox(
                                        height: 22,
                                        width: 22,
                                        child: AnimatedOnTapWidget(
                                          onTap: () => _.deleteTextFieldGroup(object: e),
                                          child: icoDelete(),
                                        ),
                                      ),
                                    )
                                ],
                              ),
                              ReferralDataTextField(
                                onChange: (data) => _.updateReferralMap(index: index, data: data),
                                data: _.listOfReferrals[index],
                              )
                            ],
                          ),
                        );
                      })
                    ],
                  ),
                ),
              ),

              /// add form
              GlobalCustomRaisedButton(
                color: Colors.grey.withOpacity(0.5),
                width: double.infinity,
                buttonText: 'Añadir nuevo referido',
                textColor : Colors.white,
                onPress: _.addTextFieldGroup,
              ),
              20.verticalSpace,
              /// send form to server
              GlobalCustomRaisedButton(
                color: redEuphoriaColor,
                width: double.infinity,
                buttonText: 'Enviar invitación',
                textColor : Colors.white,
                onPress: _.sendFormToServer,
              ),

              50.verticalSpace
            ],
          ),
        ),
      ),
    );
  }
}