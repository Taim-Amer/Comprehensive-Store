import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/common/widgets/appbar/appbar.dart';
import 'package:t_store/utils/constants/sizes.dart';

class AddNewAddressScreen extends StatelessWidget {
  const AddNewAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TAppBar(showBackArrow: true, title: Text("Add new Address")),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Form(
            child: Column(
              children: [
                TextFormField(decoration: const InputDecoration(prefixIcon: Icon(Iconsax.user), labelText: "Name")),
                const SizedBox(height: TSizes.spaceBtwInputField),
                TextFormField(decoration: const InputDecoration(prefixIcon: Icon(Iconsax.mobile), labelText: "Phone Number")),
                const SizedBox(height: TSizes.spaceBtwInputField),
                Row(
                  children: [
                    Expanded(child: TextFormField(decoration: const InputDecoration(prefixIcon: Icon(Iconsax.building_31), labelText: "Street"))),
                    const SizedBox(width: TSizes.spaceBtwInputField),
                    Expanded(child: TextFormField(decoration: const InputDecoration(prefixIcon: Icon(Iconsax.code), labelText: "Postal Code"))),
                  ],
                ),
                const SizedBox(height: TSizes.spaceBtwInputField),
                Row(
                  children: [
                    Expanded(child: TextFormField(decoration: const InputDecoration(prefixIcon: Icon(Iconsax.building), labelText: "City"))),
                    const SizedBox(width: TSizes.spaceBtwInputField),
                    Expanded(child: TextFormField(decoration: const InputDecoration(prefixIcon: Icon(Iconsax.activity), labelText: "State"))),
                  ],
                ),
                const SizedBox(height: TSizes.spaceBtwInputField),
                TextFormField(decoration: const InputDecoration(prefixIcon: Icon(Iconsax.global), labelText: "Country")),
                const SizedBox(height: TSizes.defaultSpace),
                SizedBox(width: double.infinity, child: ElevatedButton(onPressed: (){}, child: const Text("Save")))
              ],
            ),
          ),
        ),
      ),
    );
  }
}

