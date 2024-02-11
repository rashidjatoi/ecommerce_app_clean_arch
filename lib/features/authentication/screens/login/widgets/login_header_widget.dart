import 'package:ecommerce_app/utils/constants/images_cons.dart';
import 'package:flutter/material.dart';

import '../../../../../utils/constants/e_strings.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/helpers/helper_func.dart';

class LoginHeaderWidget extends StatelessWidget {
  const LoginHeaderWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = EHelperFunc.isDarkMode(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
          height: 150,
          image: AssetImage(
            dark ? EImages.lightAppLogo : EImages.darkAppLogo,
          ),
        ),
        Text(
          ETexts.loginTitle,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        const SizedBox(height: ESizes.sm),
        Text(
          ETexts.loginSubTitle,
          style: Theme.of(context).textTheme.bodyMedium,
        )
      ],
    );
  }
}
