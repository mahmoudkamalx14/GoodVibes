import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:goodvibes/core/theme/app_styles.dart';

class AppTextButton extends StatelessWidget {
  const AppTextButton({
    super.key,
    required this.textButton,
    required this.onPressed,
    this.textStyle,
    this.buttonWidth,
    this.buttonHeight,
    this.backgroundColor,
    this.borderRadius,
    this.verticalPadding,
    this.horizontalPadding,
  });

  final String textButton;
  final TextStyle? textStyle;
  final VoidCallback onPressed;
  final double? buttonWidth;
  final double? buttonHeight;
  final Color? backgroundColor;
  final double? borderRadius;
  final double? verticalPadding;
  final double? horizontalPadding;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(
          backgroundColor ?? const Color(0xFF2F2E41),
        ),
        padding: WidgetStateProperty.all(
          EdgeInsets.symmetric(
            vertical: verticalPadding ?? 16.h,
            horizontal: horizontalPadding ?? 12.w,
          ),
        ),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        shape: WidgetStateProperty.all(RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius ?? 16))),
        fixedSize: WidgetStateProperty.all(
          Size(
            buttonWidth ?? double.maxFinite,
            buttonHeight ?? 70.h,
          ),
        ),
      ),
      child: Text(
        textButton,
        style: textStyle ??
            AppStyles.style24ExtraBold.copyWith(color: Colors.white),
      ),
    );
  }
}
