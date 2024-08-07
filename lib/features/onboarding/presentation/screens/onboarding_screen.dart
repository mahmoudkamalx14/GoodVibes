import 'package:flutter/material.dart';
import 'package:goodvibes/features/onboarding/models/onboarding_data_list.dart';

import '../widgets/onboarding_item_widget.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      itemBuilder: (context, index) => OnBoardingItemWidget(index: index),
      itemCount: onBoardingList.length,
      controller: onBoardingController,
      reverse: true,
    );
  }
}
