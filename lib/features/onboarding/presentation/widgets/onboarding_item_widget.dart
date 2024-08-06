import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:goodvibes/core/routes/routes.dart';
import 'package:goodvibes/core/theme/app_styles.dart';
import 'package:goodvibes/core/utils/extentions.dart';
import 'package:goodvibes/core/utils/spaces.dart';
import 'package:goodvibes/core/widgets/app_text_button.dart';
import 'package:goodvibes/features/onboarding/models/onboarding_data_list.dart';
import 'package:goodvibes/features/onboarding/models/onboarding_model.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingItemWidget extends StatefulWidget {
  const OnBoardingItemWidget({
    super.key,
    this.index,
  });

  final int? index;
  @override
  State<OnBoardingItemWidget> createState() => _OnBoardingItemWidgetState();
}

PageController onBoardingController = PageController();

List<OnBoardingModel> model = onBoardingList;

class _OnBoardingItemWidgetState extends State<OnBoardingItemWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 48.h, horizontal: 48.w),
          child: Center(
            child: Column(
              children: [
                SvgPicture.asset('assets/images/Basket.svg'),
                verticalSpace(40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SvgPicture.asset('assets/images/group6904.svg'),
                    SvgPicture.asset('assets/images/Group 6905.svg'),
                  ],
                ),
                verticalSpace(51),
                SvgPicture.asset(model[widget.index!].image),
                verticalSpace(28),
                Text(
                  model[widget.index!].title,
                  style: AppStyles.style24ExtraBold,
                ),
                verticalSpace(12),
                Text(
                  model[widget.index!].body,
                  textAlign: TextAlign.center,
                  style: AppStyles.style18Regular,
                ),
                verticalSpace(25),
                SmoothPageIndicator(
                  controller: onBoardingController,
                  count: onBoardingList.length,
                  axisDirection: Axis.horizontal,
                  effect: SlideEffect(
                    spacing: 8.0,
                    radius: 8.0,
                    dotWidth: 14.0.w,
                    dotHeight: 14.0.h,
                    paintStyle: PaintingStyle.fill,
                    strokeWidth: 1.5,
                    dotColor: const Color(0xFF999999),
                    activeDotColor: const Color(0xFF2F2E41),
                  ),
                ),
                verticalSpace(38),
                AppTextButton(
                  textButton: model[widget.index!].textButton,
                  onPressed: () {
                    if (widget.index! != 2) {
                      setState(() {
                        onBoardingController.nextPage(
                          duration: const Duration(seconds: 1),
                          curve: Curves.linearToEaseOut,
                        );
                      });
                    } else {
                      submitOnBoarding(context);
                    }
                  },
                ),
                const Spacer(),
                Text(
                  'تخطي',
                  textAlign: TextAlign.center,
                  style: AppStyles.style18Regular,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void submitOnBoarding(BuildContext context) {
    context.navigateToReplacement(Routes.loginScreen);
    // CacheHelper().saveData(key: Routes.onBoardingScreen, value: true);
  }
}
