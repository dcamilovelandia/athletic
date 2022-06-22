import 'package:athletic/src/core/imports/app_imports.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ReferralsOnboardPage extends StatelessWidget {
  const ReferralsOnboardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ScreenUtil screenUtil = ScreenUtil();
    return GetBuilder<ReferralsOnboardController>(
      init: ReferralsOnboardController(),
      builder: (_) => Scaffold(
        backgroundColor: backgroundGray,
        body: Stack(
          children: [
            /// image
            PageView(
              controller: _.pageController,
              physics: const NeverScrollableScrollPhysics(),
              children: [
                _backgroundImage(image: onBoard_1, screenUtil: screenUtil, content:_contentOne()),
                _backgroundImage(image: onBoard_2, screenUtil: screenUtil, content:_contentTwo()),
                _backgroundImage(image: onBoard_3, screenUtil: screenUtil, content:_contentThree())
              ],
            ),
            /// body
            SafeArea(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 80.w),
                child: SizedBox(
                  height: screenUtil.screenHeight  - (screenUtil.bottomBarHeight + screenUtil.statusBarHeight),
                  width: screenUtil.screenWidth,
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      /// appBar
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 30.h),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            AnimatedOnTapWidget(
                              onTap: (){},
                              child: SizedBox(
                                height: 42,
                                width: 42,
                                child: icoBackArrow(),
                              ),
                            ),
                            athleticLogo()
                          ],
                        ),
                      ),
                      Column(
                        children: [
                          /// buttons
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              /// close view
                              GlobalCustomRaisedButton(
                                width: (screenUtil.screenWidth / 2) - 120.w,
                                color: Colors.transparent,
                                borderColor: Colors.white,
                                textColor: Colors.white,
                                buttonText: 'Cerrar',
                                onPress: _.goToReferralsPage,
                              ),
                              /// next onBoard page
                              GlobalCustomRaisedButton(
                                width: (screenUtil.screenWidth / 2) - 120.w,
                                color: HexColor.fromHex('#E50051'),
                                textColor: Colors.white,
                                buttonText: 'Siguiente',
                                onPress: _.changePage,
                              )
                            ],
                          ),
                          40.verticalSpace,
                          /// page indicator
                          LinearProgressIndicator(
                            backgroundColor: Colors.white.withOpacity(0.5),
                            color: Colors.white,
                            value: _.indicatorValue,
                          ),
                          40.verticalSpace
                        ],
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  /// content of page one
  Widget _contentOne() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          children: [
            30.horizontalSpace,
            icoAgreement(),
            20.horizontalSpace,
            _title(title: '¡Gana!'),
          ],
        ),
        50.verticalSpace,
        RichText(
          text: TextSpan(
            children: [
              _subTitleSpan(subTitle: 'meses adiciones a tu plan Refiere a todos tus '),
              _subTitleBoldSpan(subTitle: 'amigos y conocidos '),
              _subTitleSpan(subTitle: '¡Empieza ahora!')
            ]
          ),
        )
      ],
    );
  }
  /// content of page two
  Widget _contentTwo() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          children: [
            30.horizontalSpace,
            icoAgreement(),
            20.horizontalSpace,
            _title(title: '¡Registra!'),
          ],
        ),
        RichText(
          text: TextSpan(
              children: [
                _subTitleSpan(subTitle: 'Ganar meses de entrenamiento es '),
                _subTitleBoldSpan(subTitle: 'muy fácil.\n'),
                _subTitleSpan(subTitle: 'Ingresa la información de tus amigos o conocidos en nuestra plataforma y regálales '),
                _subTitleBoldSpan(subTitle: '3 días de cortesía '),
                _subTitleSpan(subTitle: 'en '),
                _subTitleBoldSpan(subTitle: 'Athletic '),
              ]
          ),
        )
      ],
    );
  }
  /// content of page three
  Widget _contentThree() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          children: [
            30.horizontalSpace,
            icoAgreement(),
            20.horizontalSpace,
            _title(title: '¡tu ganas, yo gano!'),
          ],
        ),
        50.verticalSpace,
        RichText(
          text: TextSpan(
              children: [
                _subTitleSpan(subTitle: 'Si tu amigo se afilia a '),
                _subTitleBoldSpan(subTitle: 'Athletic'),
                _subTitleSpan(subTitle: ', él y tu recibirán '),
                _subTitleBoldSpan(subTitle: 'un mes adicional de entrenamiento'),
              ]
          ),
        )
      ],
    );
  }
  /// content title
  Widget _title({required title}) {
    return Text(
      title,
      style: const TextStyle(
          color: Colors.white,
          fontSize: 22,
          fontWeight: FontWeight.w600
      ),
    );
  }
  /// span without bold text
  TextSpan _subTitleSpan({required subTitle}) {
    return TextSpan(
        text: subTitle,
        style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w400
        )
    );
  }
  /// span with bold text
  TextSpan _subTitleBoldSpan({required subTitle}) {
    return TextSpan(
        text: subTitle,
        style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w600
        )
    );
  }

  /// background image and content
  Widget _backgroundImage({required String image, required ScreenUtil screenUtil, required Widget content}) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Container(
          width: screenUtil.screenWidth,
          height: screenUtil.screenHeight,
          decoration: BoxDecoration(
            image:  DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.cover
            ),
          ),
        ),
        /// gradient
        Container(
          width: screenUtil.screenWidth,
          height: screenUtil.screenHeight,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [
                    Colors.black.withOpacity(0.5),
                    Colors.transparent,
                    Colors.black.withOpacity(0.8)
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter
              )
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 80.w, vertical: 350.h),
            child: content,
          ),
        )
      ],
    );
  }
}