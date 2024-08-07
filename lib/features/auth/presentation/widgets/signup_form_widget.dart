import 'package:flutter/material.dart';
import 'package:goodvibes/core/functions/validator.dart';
import 'package:goodvibes/core/utils/spaces.dart';
import 'package:goodvibes/core/widgets/app_text_button.dart';
import 'package:goodvibes/core/widgets/app_text_form_field.dart';

class SignUpFormWidget extends StatefulWidget {
  const SignUpFormWidget({super.key});

  @override
  State<SignUpFormWidget> createState() => _SignUpFormWidgetState();
}

class _SignUpFormWidgetState extends State<SignUpFormWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const AppTextFormField(
          hintText: 'الإسم',
          validator: notEmptyValidator,
        ),
        verticalSpace(15),
        const AppTextFormField(
          hintText: 'البريد الإلكتروني',
          validator: emailValidator,
        ),
        verticalSpace(15),
        const AppTextFormField(
          hintText: 'كلمة المرور',
          validator: passwordValidator,
        ),
        verticalSpace(15),
        const AppTextFormField(
          hintText: 'رقم الهاتف',
          validator: phoneNumberValidator,
        ),
        verticalSpace(15),
        const AppTextFormField(
          hintText: 'صاحب منزل',
          validator: phoneNumberValidator,
        ),
        verticalSpace(15),
        const AppTextFormField(
          hintText: 'الموقع',
          validator: phoneNumberValidator,
        ),
        verticalSpace(24),
        AppTextButton(
          textButton: 'إنشاء حساب',
          onPressed: () {},
        ),
      ],
    );
  }
}
