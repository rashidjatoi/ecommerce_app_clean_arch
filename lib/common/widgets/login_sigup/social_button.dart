import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/images_cons.dart';
import '../../../utils/constants/sizes.dart';

class ESocialButtonWidget extends StatelessWidget {
  const ESocialButtonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: EColors.grey,
            ),
            borderRadius: BorderRadius.circular(100),
          ),
          child: IconButton(
            onPressed: () {},
            icon: const Image(
              width: ESizes.iconMd,
              height: ESizes.iconMd,
              image: AssetImage(EImages.google),
            ),
          ),
        ),

        // Space
        const SizedBox(width: ESizes.spaceBtwItems),

        Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: EColors.grey,
            ),
            borderRadius: BorderRadius.circular(100),
          ),
          child: IconButton(
            onPressed: () {},
            icon: const Image(
              width: ESizes.iconMd,
              height: ESizes.iconMd,
              image: AssetImage(EImages.facebook),
            ),
          ),
        )
      ],
    );
  }
}
