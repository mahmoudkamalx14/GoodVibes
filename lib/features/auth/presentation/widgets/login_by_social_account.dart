import 'package:flutter/material.dart';
import 'package:goodvibes/core/utils/spaces.dart';
import 'package:goodvibes/features/auth/presentation/widgets/circular_icon.dart';

class LoginBySocialAccount extends StatelessWidget {
  const LoginBySocialAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircularIcon(
          onTap: () {},
          image: 'assets/icons/Facebok_Icon.svg',
        ),
        horizontalSpace(30),
        CircularIcon(
          onTap: () {},
          image: 'assets/icons/Google_Icon.svg',
        ),
      ],
    );
  }
}
