import 'package:flutter/material.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/e_strings.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/helpers/helper_func.dart';

class SignUpFormTermsAndConditions extends StatelessWidget {
  const SignUpFormTermsAndConditions({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = EHelperFunc.isDarkMode(context);

    return Row(
      children: [
        SizedBox(
          width: 24,
          height: 24,
          child: Checkbox(
            value: true,
            onChanged: (value) {},
          ),
        ),

        // SPACE
        const SizedBox(height: ESizes.spaceBtwItems),

        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                  text: ' ${ETexts.iAgreeTo} ',
                  style: Theme.of(context).textTheme.bodySmall),
              TextSpan(
                text: ETexts.privacyPolicy,
                style: Theme.of(context).textTheme.bodyMedium!.apply(
                      decoration: TextDecoration.underline,
                      color: dark ? EColors.white : EColors.buttonPrimary,
                    ),
              ),
              TextSpan(
                text: ' ${ETexts.and} ',
                style: Theme.of(context).textTheme.bodySmall,
              ),
              TextSpan(
                text: ETexts.termsOfUse,
                style: Theme.of(context).textTheme.bodyMedium!.apply(
                      decoration: TextDecoration.underline,
                      color: dark ? EColors.white : EColors.buttonPrimary,
                    ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
