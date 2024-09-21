import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/common/widgets/appbar/appbar.dart';
import 'package:t_store/common/widgets/icons/circular_icon.dart';
import 'package:t_store/features/shop/screens/home/home.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        title: Text("Wishlist", style: Theme.of(context).textTheme.headlineMedium),
        actions: [
          TCircularIcon(icon: Iconsax.add, onPressed: () =>  Get.to(const HomeScreen())),
        ],
      ),
      body: ,
    );
  }
}
