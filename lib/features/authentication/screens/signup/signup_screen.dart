import 'package:ecommerce_app/common/widgets/login_sigup/form_divider.dart';
import 'package:ecommerce_app/common/widgets/login_sigup/social_button.dart';
import 'package:ecommerce_app/utils/constants/e_strings.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'widgets/signup_form.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(ESizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // TITLE
              Text(
                ETexts.signupTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),

              // SPACE
              const SizedBox(height: ESizes.spaceBtwSections),

              // FORM
              const SignUpFormWidget(),

              // SPACE
              const SizedBox(height: ESizes.spaceBtwSections),

              // DIVIDER
              FormDividerSection(dividerText: ETexts.orSignUpWith.capitalize!),

              // SPACE
              const SizedBox(height: ESizes.spaceBtwSections),

              // SOCIAL BUTTONS
              const ESocialButtonWidget(),

              // SPACE
              const SizedBox(height: ESizes.spaceBtwSections),
            ],
          ),
        ),
      ),
    );
  }
}
