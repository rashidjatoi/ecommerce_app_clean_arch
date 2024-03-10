import 'package:ecommerce_app/features/authentication/screens/password_configuration/reset_password_screen.dart';
import 'package:ecommerce_app/utils/constants/e_strings.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(ESizes.defaultSpace),
        child: Column(
          children: [
            // Headings
            Text(
              ETexts.forgetPasswordTitle,
              style: Theme.of(context).textTheme.headlineMedium,
            ),

            const SizedBox(height: ESizes.spaceBtwItems),

            Text(
              ETexts.forgetPasswordSubTitle,
              style: Theme.of(context).textTheme.labelMedium,
              textAlign: TextAlign.center,
            ),

            const SizedBox(height: ESizes.spaceBtwSections * 2),

            // Text Fields

            SizedBox(
              height: 60,
              child: TextFormField(
                decoration: const InputDecoration(
                  labelText: ETexts.email,
                  prefixIcon: Icon(Iconsax.direct_right),
                ),
              ),
            ),

            const SizedBox(height: ESizes.spaceBtwSections * 2),

            // Submit Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Get.off(() => const ResetPasswordScreen());
                },
                child: const Text(ETexts.submit),
              ),
            )
          ],
        ),
      ),
    );
  }
}
