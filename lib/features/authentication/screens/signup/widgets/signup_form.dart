import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/e_strings.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/helpers/helper_func.dart';

class SignUpFormWidget extends StatelessWidget {
  const SignUpFormWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = EHelperFunc.isDarkMode(context);

    return Form(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: SizedBox(
                  height: 50,
                  child: TextFormField(
                    expands: false,
                    decoration: const InputDecoration(
                      labelText: ETexts.firstName,
                      prefixIcon: Icon(Iconsax.user),
                    ),
                  ),
                ),
              ),

              // SPACE
              const SizedBox(width: ESizes.spaceBtwInputFields),

              Expanded(
                child: SizedBox(
                  height: 50,
                  child: TextFormField(
                    expands: false,
                    decoration: const InputDecoration(
                      labelText: ETexts.lastName,
                      prefixIcon: Icon(Iconsax.user),
                    ),
                  ),
                ),
              ),
            ],
          ),

          // SPACE
          const SizedBox(height: ESizes.spaceBtwInputFields),

          SizedBox(
            height: 50,
            child: TextFormField(
              expands: false,
              decoration: const InputDecoration(
                labelText: ETexts.username,
                prefixIcon: Icon(Iconsax.user_edit),
              ),
            ),
          ),

          // SPACE
          const SizedBox(height: ESizes.spaceBtwInputFields),

          SizedBox(
            height: 50,
            child: TextFormField(
              expands: false,
              decoration: const InputDecoration(
                labelText: ETexts.email,
                prefixIcon: Icon(Iconsax.direct),
              ),
            ),
          ),

          // SPACE
          const SizedBox(height: ESizes.spaceBtwInputFields),

          SizedBox(
            height: 50,
            child: TextFormField(
              expands: false,
              decoration: const InputDecoration(
                labelText: ETexts.phoneNo,
                prefixIcon: Icon(Iconsax.call),
              ),
            ),
          ),

          // SPACE
          const SizedBox(height: ESizes.spaceBtwInputFields),

          SizedBox(
            height: 50,
            child: TextFormField(
              expands: false,
              decoration: InputDecoration(
                labelText: ETexts.password,
                labelStyle: TextStyle(
                  color: dark ? EColors.white : EColors.dark,
                ),
                prefixIcon: const Icon(Iconsax.password_check),
                suffixIcon: const Icon(Iconsax.eye_slash),
              ),
            ),
          ),

          // SPACE
          const SizedBox(height: ESizes.spaceBtwSections),

          // TERMS AND CONDITIONS CHECKBOX
          Row(
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
          ),

          // SPACE
          const SizedBox(height: ESizes.spaceBtwSections),

          // SIGN UP BUTTON
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {},
              child: const Text(
                ETexts.createAccount,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
