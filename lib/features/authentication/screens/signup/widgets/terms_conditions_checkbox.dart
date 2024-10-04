import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:t_store/features/authentication/controllers/signup/signup_controller.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/constants/text_strings.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class TTermsAndConditionCheckbox extends StatelessWidget {
  const TTermsAndConditionCheckbox({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    final controller = SignupController.instance;
    return Row(
      children: [
        SizedBox(width: 24, height: 24, child: Obx(() => Checkbox(
          value: controller.privacyPolicy.value,
          onChanged: (value) => controller.privacyPolicy.value = !controller.privacyPolicy.value)),
        ),
        const SizedBox(width: TSizes.spaceBtwItems,),
        Text.rich(
            TextSpan(children: [
              TextSpan(text: "${TTexts.isAgreeTo} ", style: Theme.of(context).textTheme.bodySmall),
              TextSpan(text: "${TTexts.privacyPolicy} ", style: Theme.of(context).textTheme.bodyMedium!.apply(
                  color: dark ? TColors.white : TColors.primary,
                  decoration: TextDecoration.underline,
                  decorationColor: dark ? TColors.white : TColors.primary
              )),
              TextSpan(text: "${TTexts.and} ", style: Theme.of(context).textTheme.bodySmall),
              TextSpan(text: "${TTexts.termsOfUse} ", style: Theme.of(context).textTheme.bodyMedium!.apply(
                  color: dark ? TColors.white : TColors.primary,
                  decoration: TextDecoration.underline,
                  decorationColor: dark ? TColors.white : TColors.primary
              )),
            ])
        )
      ],
    );
  }
}
