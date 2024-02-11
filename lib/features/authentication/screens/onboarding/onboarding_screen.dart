import 'package:ecommerce_app/utils/constants/e_strings.dart';
import 'package:ecommerce_app/utils/constants/images_cons.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controllers/onboarding/onboarding_controller.dart';
import 'widgets/onboarding_circle_button.dart';
import 'widgets/onboarding_navigation.dart';
import 'widgets/onboarding_page_widget.dart';
import 'widgets/onpage_skip_widget.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnboardingController());

    return Scaffold(
      body: Stack(
        children: [
          // HORIZONTAL SCROLLABLE PAGES
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            // controller: ,
            children: const [
              OnBoardingPage(
                image: EImages.onBoardingImage1,
                subTitle: ETexts.onBoardingSubTitle1,
                title: ETexts.onBoardingTitle1,
              ),
              OnBoardingPage(
                image: EImages.onBoardingImage2,
                title: ETexts.onBoardingTitle2,
                subTitle: ETexts.onBoardingSubTitle2,
              ),
              OnBoardingPage(
                image: EImages.onBoardingImage3,
                title: ETexts.onBoardingTitle3,
                subTitle: ETexts.onBoardingSubTitle3,
              ),
            ],
          ),

          //SKIP BUTTON
          const OnBoardingSkip(),

          // DOT NAVIGATION SMOOTH INDICATOR
          const OnBoardingDotNavigation(),

          // CIRCLE BUTTON
          const OnboardingCircleButton()
        ],
      ),
    );
  }
}
