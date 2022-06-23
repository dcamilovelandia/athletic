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
        child: SizedBox(
          width: screenUtil.screenWidth,
          height: screenUtil.screenHeight - (screenUtil.bottomBarHeight + screenUtil.statusBarHeight + 280.h),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
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
                                Text(
                                  'Amigo ${index + 1}',
                                  style: textStyle(
                                      size: 13,
                                      fontWeight: FontWeight.w600
                                  ),
                                ),
                                ReferralDataTextField(onChange: (onChange){

                                })
                              ],
                            ),
                          );
                        })
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}