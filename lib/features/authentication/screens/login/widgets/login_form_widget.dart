import 'package:ecommerce_app/features/authentication/screens/password_configuration/forget_password_screen.dart';
import 'package:ecommerce_app/features/authentication/screens/signup/signup_screen.dart';
import 'package:ecommerce_app/navigation_menu_screen.dart';
import 'package:ecommerce_app/utils/constants/e_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../utils/constants/sizes.dart';

class LoginFormWidget extends StatelessWidget {
  const LoginFormWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: ESizes.spaceBtwSections,
        ),
        child: Column(
          children: [
            // Email
            SizedBox(
              height: 50,
              child: TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                  prefixIcon: Icon(Iconsax.direct_right),
                  labelText: 'Email',
                ),
              ),
            ),

            // Space
            const SizedBox(height: ESizes.spaceBtwInputFields),

            // Password
            SizedBox(
              height: 50,
              child: TextFormField(
                decoration: const InputDecoration(
                    prefixIcon: Icon(Iconsax.password_check),
                    label: Text(ETexts.password),
                    suffixIcon: Icon(Iconsax.eye_slash)),
              ),
            ),

            // SPACE
            const SizedBox(height: ESizes.spaceBtwInputFields / 2),

            // Remember Me & Forget Password
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Remember Me
                Row(
                  children: [
                    Checkbox(value: true, onChanged: (value) {}),
                    const Text(ETexts.rememberMe)
                  ],
                ),

                // Forget Password
                TextButton(
                  onPressed: () => Get.to(() => const ForgetPasswordScreen()),
                  child: const Text(ETexts.forgetPassword),
                )
              ],
            ),

            // SPACE
            const SizedBox(height: ESizes.spaceBtwSections),

            // Sign in Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Get.to(() => const NavigationMenuScreen());
                },
                child: const Text(ETexts.signIn),
              ),
            ),

            // SPACE
            const SizedBox(height: ESizes.spaceBtwItems),

            // Create Account button
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: () => Get.to(() => const SignUpScreen()),
                child: const Text(ETexts.createAccount),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
