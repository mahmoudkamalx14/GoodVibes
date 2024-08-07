import 'package:flutter/material.dart';
import 'package:goodvibes/core/functions/validator.dart';
import 'package:goodvibes/core/utils/spaces.dart';
import 'package:goodvibes/core/widgets/app_text_button.dart';
import 'package:goodvibes/core/widgets/app_text_form_field.dart';

class LoginFormWidget extends StatefulWidget {
  const LoginFormWidget({super.key});

  @override
  State<LoginFormWidget> createState() => _LoginFormWidgetState();
}

bool isObscureText = true;

class _LoginFormWidgetState extends State<LoginFormWidget> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Column(
        children: [
          const AppTextFormField(
            hintText: 'رقم الهاتف',
            validator: phoneNumberValidator,
          ),
          verticalSpace(15),
          AppTextFormField(
            hintText: 'كلمة المرور',
            validator: passwordValidator,
            isObscureText: isObscureText,
            suffixIcon: const Icon(Icons.visibility),
          ),
          verticalSpace(15),
          AppTextButton(
            textButton: 'تسجيل الدخول',
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
