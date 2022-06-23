import 'package:athletic/src/core/imports/app_imports.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ReferralCard extends StatelessWidget {
  const ReferralCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    RxBool expanded = false.obs;
    final ScreenUtil screenUtil = ScreenUtil();
    return Obx(() => Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: screenUtil.screenWidth,
          height: 1,
          color: greyUniverseColor.withOpacity(0.5),
        ),
        ExpansionTile(
          onExpansionChanged: (value) => expanded.value = value,
          collapsedBackgroundColor: Colors.transparent,
          expandedAlignment: Alignment.centerLeft,
          tilePadding: const EdgeInsets.all(0),
          expandedCrossAxisAlignment: CrossAxisAlignment.start,
          title: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: 50,
                width: (screenUtil.screenWidth / 2),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(
                      height: 22,
                      width: 22,
                      child: icoUser(),
                    ),
                    30.horizontalSpace,
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Kevin Ruiz',
                          overflow: TextOverflow.ellipsis,
                          style: textStyle(
                              fontWeight: FontWeight.w600
                          ),
                        ),
                        Text(
                          expanded.value ? '' : 'con plan |12|29|2021',
                          overflow: TextOverflow.ellipsis,
                          style: textStyle(
                              size: 11
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  if(!expanded.value)
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Beneficio',
                          overflow: TextOverflow.ellipsis,
                          style: textStyle(
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        Text(
                          '1 mes gratis',
                          overflow: TextOverflow.ellipsis,
                          style: textStyle(
                              size: 11,
                              fontWeight: FontWeight.w600
                          ),
                        )
                      ],
                    ),
                ],
              ),
              0.horizontalSpace
            ],
          ),
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _referralPlanDetails(title: 'Correo', subtitle: 'jazzurynat@corre.com'),
                20.verticalSpace,
                _referralPlanDetails(title: 'Telefono', subtitle: '3203565112'),
                20.verticalSpace,
                _referralPlanDetails(title: 'Estado', subtitle: 'VIP / Año'),
                20.verticalSpace,
                _referralPlanDetails(title: 'Fecha afilición', subtitle: '29 | Diciembre | 2022'),
                20.verticalSpace,
                _referralPlanDetails(title: 'Beneficio', subtitle: '1 mes gratis'),
                30.verticalSpace
              ],
            )
          ],
        ),
      ],
    ));
  }
  
  Widget _referralPlanDetails({required String title, required String subtitle}) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 90.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: textStyle(
              fontWeight: FontWeight.w600
            ),
          ),
          Text(
            subtitle,
            style: textStyle(
                fontWeight: FontWeight.w300
            ),
          )
        ],
      ),
    );
  }
}