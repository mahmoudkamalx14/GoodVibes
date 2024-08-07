import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:goodvibes/core/theme/app_styles.dart';
import 'package:goodvibes/core/utils/extentions.dart';
import 'package:goodvibes/core/utils/spaces.dart';
import 'package:goodvibes/features/auth/presentation/widgets/signup_form_widget.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

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
                    verticalSpace(60),
                    Text('إنشاء حساب', style: AppStyles.style24ExtraBold),
                    verticalSpace(3),
                    Text(
                      'الرجاء كتابة معلوماتك',
                      style: AppStyles.style13Regular,
                    ),
                    verticalSpace(12),
                    const SignUpFormWidget(),
                    verticalSpace(12),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'لدي حساب بالفعل',
                          style: AppStyles.style18Regular,
                        ),
                        horizontalSpace(14),
                        GestureDetector(
                          onTap: () {
                            context.pop();
                          },
                          child: Text(
                            'تسجيل الدخول',
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
