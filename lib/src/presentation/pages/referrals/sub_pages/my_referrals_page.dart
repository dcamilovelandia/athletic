import 'package:athletic/src/core/imports/app_imports.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class MyReferralsPage extends StatelessWidget {
  const MyReferralsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ReferralsController>(
      id: 'my_referrals_page',
      builder: (_) => Padding(
        padding: EdgeInsets.symmetric(vertical: 30.h),
        child: Column(
          children: [
            20.verticalSpace,
            /// introduction title
            RichText(
              text: TextSpan(
                  children: [
                    subTitleSpan(
                        textColor: black,
                        subTitle: 'Estos son todos tus referidos y los beneficios que haz recibido por cada uno. Continúa refiriendo y gana meses de entrenamiento adicional a tu plan'
                    ),
                  ]
              ),
            ),
            80.verticalSpace,
            /// if user has not referrals show the message
            if(!_.hasReferrals)
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  400.verticalSpace,
                  SizedBox(
                    height: 80,
                    width: 80,
                    child: icoAgreement(color: greyUniverseColor),
                  ),
                  30.verticalSpace,
                  Text(
                    'Aún no tienes referidos',
                    textAlign: TextAlign.center,
                    style: textStyle(
                      color: greyUniverseColor,
                      size: 22,
                      fontWeight: FontWeight.w600
                    ),
                  )
                ],
              )
          ],
        ),
      ),
    );
  }
}
