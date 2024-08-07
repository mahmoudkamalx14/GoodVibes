import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CircularIcon extends StatelessWidget {
  const CircularIcon({
    super.key,
    required this.onTap,
    required this.image,
  });

  final Function() onTap;
  final String image;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 40.w,
        height: 40.h,
        clipBehavior: Clip.antiAlias,
        decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
            side: const BorderSide(
              width: 1,
              strokeAlign: BorderSide.strokeAlignOutside,
              color: Color(0xB2B2CCFF),
            ),
            borderRadius: BorderRadius.circular(40.r),
          ),
        ),
        child: SvgPicture.asset(image),
      ),
    );
  }
}
