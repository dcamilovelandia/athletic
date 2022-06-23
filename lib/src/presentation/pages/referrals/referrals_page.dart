import 'package:athletic/src/core/imports/app_imports.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ReferralsPage extends StatelessWidget {
  const ReferralsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ScreenUtil screenUtil = ScreenUtil();
    return GetBuilder<ReferralsController>(
      id: 'changePage',
      init: ReferralsController(),
      builder: (_) => GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        child: Scaffold(
          backgroundColor: backgroundWhiteColor,
          appBar: PreferredSize(
            preferredSize: Size(screenUtil.screenWidth, 300.h),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 80.w),
              child:  SafeArea(
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    /// back button / title
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        30.verticalSpace,
                        /// backButton
                        AnimatedOnTapWidget(
                          onTap: (){},
                          child: SizedBox(
                            height: 42,
                            width: 42,
                            child: icoBackArrow(color: Colors.black),
                          ),
                        ),
                        15.verticalSpace,

                        /// title
                        Text(
                          'Referidos',
                          style: textStyle(
                              size: 22,
                              fontWeight: FontWeight.w600
                          ),
                        )
                      ],
                    ),
                    /// appbar buttons
                    Padding(
                      padding: EdgeInsets.only(bottom: 10.h),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          PageButton(
                              onTap: () => _.changePage(page: 0),
                              title: 'Referir',
                              backgroundColor: _.currentPage == 0 ? blackUniverseColor : pearlShineColor,
                              textColor: _.currentPage == 0 ? pearlShineColor : blackUniverseColor
                          ),
                          30.horizontalSpace,
                          PageButton(
                              onTap: () => _.changePage(page: 1),
                              title: 'Mis referidos',
                              textColor: _.currentPage == 1 ? pearlShineColor : blackUniverseColor,
                              backgroundColor: _.currentPage == 1 ? blackUniverseColor : pearlShineColor
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 80.w),
            child: SizedBox(
              height: screenUtil.screenHeight - 300.h,
              child: PageView(
                controller: _.pageController,
                scrollDirection: Axis.horizontal,
                physics: const NeverScrollableScrollPhysics(),
                children: const [
                  ReferralPage(),
                  MyReferralsPage()
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}