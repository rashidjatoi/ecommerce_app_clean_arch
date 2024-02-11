import 'package:ecommerce_app/utils/constants/e_strings.dart';
import 'package:ecommerce_app/utils/helpers/helper_func.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../common/style/spacing_style.dart';
import '../../../../common/widgets/login_sigup/form_divider.dart';
import '../../../../common/widgets/login_sigup/social_button.dart';
import '../../../../utils/constants/sizes.dart';
import 'widgets/login_form_widget.dart';
import 'widgets/login_header_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = EHelperFunc.isDarkMode(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: ESpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              // LOGO, TITLE & SUB-TITLE
              const LoginHeaderWidget(),

              // FORM
              const LoginFormWidget(),

              // DIVIDER
              FormDividerSection(dividerText: ETexts.orSignInWith.capitalize!),

              // SPACE
              const SizedBox(height: ESizes.spaceBtwSections),

              // FOOTER
              const ESocialButtonWidget()
            ],
          ),
        ),
      ),
    );
  }
}
