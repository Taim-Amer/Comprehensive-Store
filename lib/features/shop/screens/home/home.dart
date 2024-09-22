// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:t_store/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:t_store/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:t_store/common/widgets/layouts/grid_layout.dart';
import 'package:t_store/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:t_store/common/widgets/texts/section_heading.dart';
import 'package:t_store/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:t_store/features/shop/screens/home/widgets/home_categories.dart';
import 'package:t_store/features/shop/screens/home/widgets/promo_slider.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/sizes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TPrimaryHeaderContainer(
              child: Column(
                children: [
                  THomeAppBar(),
                  SizedBox(height: TSizes.spaceBtwSections,),
                  TSearchContainer(text: "Search in Store",),
                  SizedBox(height: TSizes.spaceBtwSections,),
                  Padding(
                    padding: EdgeInsets.only(left: TSizes.defaultSpace),
                    child: Column(
                      children: [
                        TSectionHeading(title: "Popular Categories", showActionButton: false, textColor: TColors.white),
                        SizedBox(height: TSizes.spaceBtwItems,),

                        THomeCategories(
                          categoryIcons: [
                            TImages.sportIcon,
                            TImages.clothIcon,
                            TImages.shoeIcon,
                            TImages.cosmeticsIcon,
                            TImages.animalIcon,
                            TImages.toyIcon,
                            TImages.furnitureIcon,
                            TImages.jeweleryIcon,
                            TImages.electronicsIcon,
                          ],
                          categoryTitles: [
                            "Sports Category",
                            "Cloths Category",
                            "Shoes Category",
                            "Cosmetics Category",
                            "animals Category",
                            "toys Category",
                            "furniture Category",
                            "Jeweleries Category",
                            "electronics Category",
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: TSizes.spaceBtwSections),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  TPromoSlider(
                    banners: [
                      TImages.promoBanner7,
                      TImages.promoBanner5,
                    ],
                  ),
                  SizedBox(height: TSizes.spaceBtwSections),

                  TSectionHeading(title: "Popular Products"),
                  SizedBox(height: TSizes.spaceBtwItems),
                  
                  TGridLayout(
                    itemCount: 4,
                    itemBuilder: (_, index) => const TProductCardVertical(),
                    mainAxisExtent: 288,
                  )
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
