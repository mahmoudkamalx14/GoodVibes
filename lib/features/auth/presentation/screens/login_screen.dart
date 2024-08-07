import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:goodvibes/core/routes/routes.dart';
import 'package:goodvibes/core/theme/app_styles.dart';
import 'package:goodvibes/core/utils/extentions.dart';
import 'package:goodvibes/core/utils/spaces.dart';
import 'package:goodvibes/features/auth/presentation/widgets/login_by_social_account.dart';
import 'package:goodvibes/features/auth/presentation/widgets/login_form_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 48.h, horizontal: 24.w),
            child: Center(
              child: Directionality(
                textDirection: TextDirection.rtl,
                child: Column(
                  children: [
                    SvgPicture.asset('assets/images/Basket.svg'),
                    verticalSpace(36),
                    SvgPicture.asset('assets/images/pana.svg'),
                    verticalSpace(12),
                    Text('تسجيل الدخول', style: AppStyles.style24ExtraBold),
                    verticalSpace(3),
                    Text(
                      'الرجاء كتابة معلوماتك',
                      style: AppStyles.style13Regular,
                    ),
                    verticalSpace(24),
                    const LoginFormWidget(),
                    verticalSpace(12),
                    Text('أو تابع مع', style: AppStyles.style18Regular),
                    verticalSpace(12),
                    const LoginBySocialAccount(),
                    verticalSpace(12),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'قم بإنشاء حساب جديد',
                          style: AppStyles.style18Regular,
                        ),
                        horizontalSpace(14),
                        GestureDetector(
                          onTap: () {
                            context.navigateTo(Routes.signupScreen);
                          },
                          child: Text(
                            'من هنا',
                            style: AppStyles.style18Regular.copyWith(
                              color: const Color(0xFF2F2E41),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
