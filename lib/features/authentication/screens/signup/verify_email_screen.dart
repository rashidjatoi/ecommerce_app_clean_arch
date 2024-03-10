import 'package:ecommerce_app/common/widgets/success_screen/success_screen.dart';
import 'package:ecommerce_app/features/authentication/screens/login/login_screen.dart';
import 'package:ecommerce_app/utils/constants/e_strings.dart';
import 'package:ecommerce_app/utils/constants/images_cons.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:ecommerce_app/utils/helpers/helper_func.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () {
              Get.offAll(() => const LoginScreen());
            },
            icon: const Icon(CupertinoIcons.clear),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(ESizes.defaultSpace),
          child: Column(
            children: [
              // IMAGE
              Image(
                image: const AssetImage(EImages.deliveredEmailIllustration),
                width: EHelperFunc.screenWidth() * 0.6,
              ),

              // Sizebox
              const SizedBox(height: ESizes.spaceBtwSections),

              // TITLE & SUBTITLE

              Text(
                ETexts.confirmEmail,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),

              const SizedBox(height: ESizes.spaceBtwItems),

              Text(
                'Support@coding.com',
                style: Theme.of(context).textTheme.labelLarge,
                textAlign: TextAlign.center,
              ),

              const SizedBox(height: ESizes.spaceBtwItems),

              Text(
                ETexts.confirmEmailSubTitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),

              // Sizebox
              const SizedBox(height: ESizes.spaceBtwSections),

              // BUTTONS

              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Get.to(() => SuccessScreen(
                          image: EImages.staticSuccessIllustration,
                          onPressed: () => Get.to(() => const LoginScreen()),
                          subTitle: ETexts.yourAccountCreatedSubTitle,
                          title: ETexts.yourAccountCreatedTitle,
                        ));
                  },
                  child: const Text(ETexts.tContinue),
                ),
              ),

              const SizedBox(height: ESizes.spaceBtwItems),

              SizedBox(
                width: double.infinity,
                child: TextButton(
                  onPressed: () {},
                  child: const Text(ETexts.resendEmail),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
