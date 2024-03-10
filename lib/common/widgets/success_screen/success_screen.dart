import 'package:ecommerce_app/common/style/spacing_style.dart';
import 'package:ecommerce_app/utils/constants/e_strings.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

import '../../../utils/helpers/helper_func.dart';

class SuccessScreen extends StatelessWidget {
  final String image, title, subTitle;
  final VoidCallback onPressed;
  const SuccessScreen(
      {super.key,
      required this.image,
      required this.title,
      required this.subTitle,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: ESpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              // IMAGE
              Image(
                image: AssetImage(image),
                width: EHelperFunc.screenWidth() * 0.6,
              ),

              // Sizebox
              const SizedBox(height: ESizes.spaceBtwSections),

              // TITLE & SUBTITLE

              Text(
                title,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),

              const SizedBox(height: ESizes.spaceBtwItems),

              Text(
                subTitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),

              // Sizebox
              const SizedBox(height: ESizes.spaceBtwSections),

              // Buttons

              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: onPressed,
                  child: const Text(ETexts.tContinue),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
