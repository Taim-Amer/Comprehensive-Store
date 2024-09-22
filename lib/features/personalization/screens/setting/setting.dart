import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/common/widgets/appbar/appbar.dart';
import 'package:t_store/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:t_store/common/widgets/list_tiles/setting_menu_tile.dart';
import 'package:t_store/common/widgets/list_tiles/user_profile_tile.dart';
import 'package:t_store/common/widgets/texts/section_heading.dart';
import 'package:t_store/features/personalization/screens/profile/profile.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/sizes.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TPrimaryHeaderContainer(
                child: Column(
                  children: [
                    TAppBar(title: Text("Account", style: Theme.of(context).textTheme.headlineMedium!.apply(color: TColors.white))),
                    const SizedBox(height: TSizes.spaceBtwSections),
                    TUserProfileTile(onPressed: () => Get.to(() => const ProfileScreen())),
                    const SizedBox(height: TSizes.spaceBtwSections),
                  ],
                ),
            ),
            Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  const TSectionHeading(title: "Account Setting", showActionButton: false,),
                  const SizedBox(height: TSizes.spaceBtwItems),
                  const TSettingMenuTile(icon: Iconsax.safe_home, title: "My Addresses", subTitle: "Set shopping delivery address"),
                  const TSettingMenuTile(icon: Iconsax.shopping_cart, title: "My Cart", subTitle: "Add, remove products and move to checkout"),
                  const TSettingMenuTile(icon: Iconsax.bag_tick, title: "My Orders", subTitle: "In-progress and complete Orders"),
                  const TSettingMenuTile(icon: Iconsax.bank, title: "Bank Account", subTitle: "Withdraw balance to registered bank account"),
                  const TSettingMenuTile(icon: Iconsax.discount_shape, title: "My Coupons", subTitle: "List of all discounted coupons"),
                  const TSettingMenuTile(icon: Iconsax.notification, title: "Notifications", subTitle: "Set any kind of notification message"),
                  const TSettingMenuTile(icon: Iconsax.security_card, title: "Account Privacy", subTitle: "Manage data usage and connected accounts"),

                  const SizedBox(height: TSizes.spaceBtwSections),
                  const TSectionHeading(title: "App Setting", showActionButton: false,),
                  const TSettingMenuTile(icon: Iconsax.document_upload, title: "Load data", subTitle: "Upload data to your Cloud Firebase"),
                  TSettingMenuTile(icon: Iconsax.location, title: "Geolocation", subTitle: "Set recommendation based on location", trailing: Switch(value: true, onChanged: (value){})),
                  TSettingMenuTile(icon: Iconsax.security_user, title: "Safe Mode", subTitle: "Search result is safe for all ages", trailing: Switch(value: true, onChanged: (value){})),
                  TSettingMenuTile(icon: Iconsax.image, title: "HD Image quality", subTitle: "Set image quality to be seen", trailing: Switch(value: true, onChanged: (value){})),

                  const SizedBox(height: TSizes.spaceBtwSections),
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(onPressed: (){}, child: const Text("Logout")),
                  ),
                  const SizedBox(height: TSizes.spaceBtwSections),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
