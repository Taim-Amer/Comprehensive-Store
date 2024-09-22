import 'package:flutter/material.dart';
import 'package:t_store/common/widgets/chips/choice_chip.dart';
import 'package:t_store/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:t_store/common/widgets/images/circular_image.dart';
import 'package:t_store/common/widgets/texts/brand_title_text_with_verified_icon.dart';
import 'package:t_store/common/widgets/texts/product_price_text.dart';
import 'package:t_store/common/widgets/texts/product_title_text.dart';
import 'package:t_store/common/widgets/texts/section_heading.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/enums.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class TProductAttributes extends StatelessWidget {
  const TProductAttributes({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Column(
      children: [
        TRoundedContainer(
          padding: const EdgeInsets.all(TSizes.md),
          backgroundColor: dark ? TColors.darkerGrey : TColors.grey,
          child: Row(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const TSectionHeading(title: "Variation", showActionButton: false),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TCircularImage(
                        width: 32,
                        height: 32,
                        image: TImages.shoeIcon,
                        overlayColor: dark ? TColors.white : TColors.black,
                        backgroundColor: Colors.transparent,
                      ),
                      const TBrandTitleWithVerifiedIcon(title: "Nike", brandTextSize: TextSizes.medium,),
                    ],
                  )
                ],
              ),
              const SizedBox(width: TSizes.spaceBtwItems),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const TProductTitleText(title: "Price", smallSize: true),
                      const SizedBox(width: TSizes.spaceBtwItems),
                      Text("\$25", style: Theme.of(context).textTheme.titleSmall!.apply(decoration: TextDecoration.lineThrough)),
                      const SizedBox(width: TSizes.spaceBtwItems),
                      const TProductPriceText(price: "20")       ,
                    ],
                  ),

                  Row(
                    children: [
                      const TProductTitleText(title: "Stock", smallSize: true),
                      const SizedBox(width: TSizes.spaceBtwItems),
                      Text("In Stock", style: Theme.of(context).textTheme.titleMedium,),
                    ],
                  ),

                  // const TProductTitleText(title: "This is the description of the product and it can go up to max four lines.", maxLines: 4, smallSize: true)
                ],
              ),
            ],
          ),
        ),

        const SizedBox(height: TSizes.spaceBtwItems),

        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TSectionHeading(title: "Colors", showActionButton: false,),
            const SizedBox(height: TSizes.spaceBtwItems / 2),
            Wrap(
              spacing: 8,
              children: [
                TChoiceChip(text: 'Green', selected: true, onSelected: (value){},),
                TChoiceChip(text: 'Red', selected: false, onSelected: (value){},),
                TChoiceChip(text: 'Pink', selected: false, onSelected: (value){},),
                TChoiceChip(text: 'Grey', selected: true, onSelected: (value){},),
                TChoiceChip(text: 'Black', selected: false, onSelected: (value){},),
                TChoiceChip(text: 'Purple', selected: false, onSelected: (value){},),
                TChoiceChip(text: 'Brown', selected: true, onSelected: (value){},),
                TChoiceChip(text: 'Teal', selected: false, onSelected: (value){},),
              ],
            )
          ],
        ),

        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TSectionHeading(title: "Size", showActionButton: false,),
            const SizedBox(height: TSizes.spaceBtwItems / 2),
            Wrap(
              spacing: 8,
              children: [
                TChoiceChip(text: 'EU 34', selected: true, onSelected: (value){},),
                TChoiceChip(text: 'EU 36', selected: false, onSelected: (value){},),
                TChoiceChip(text: 'EU 38', selected: false, onSelected: (value){},),
                TChoiceChip(text: 'EU 34', selected: true, onSelected: (value){},),
                TChoiceChip(text: 'EU 36', selected: false, onSelected: (value){},),
                TChoiceChip(text: 'EU 38', selected: false, onSelected: (value){},),
                TChoiceChip(text: 'EU 38', selected: false, onSelected: (value){},),
                TChoiceChip(text: 'EU 38', selected: false, onSelected: (value){},),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
