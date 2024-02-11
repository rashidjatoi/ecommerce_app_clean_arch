import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/device/device_utility.dart';
import '../../../../../utils/helpers/helper_func.dart';
import '../../../controllers/onboarding/onboarding_controller.dart';

class OnboardingCircleButton extends StatelessWidget {
  const OnboardingCircleButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = EHelperFunc.isDarkMode(context);

    return Positioned(
      right: ESizes.defaultSpace,
      bottom: EDeviceUtility.getBottomNavigationBarHeight(),
      child: ElevatedButton(
        onPressed: OnboardingController.instance.nextPage,
        style: ElevatedButton.styleFrom(
            shape: const CircleBorder(),
            backgroundColor: dark ? EColors.primaryBackground : EColors.dark),
        child: Icon(
          Iconsax.arrow_right_3,
          color: dark ? EColors.dark : EColors.primaryBackground,
        ),
      ),
    );
  }
}
