import "package:flutter/material.dart";
import "package:t_store/common/widgets/products/cart/add_remove_button.dart";
import "package:t_store/common/widgets/products/cart/cart_item.dart";
import "package:t_store/common/widgets/texts/product_price_text.dart";
import "package:t_store/utils/constants/sizes.dart";

class TCartItems extends StatelessWidget {
  const TCartItems({super.key, this.showAddRemoveButton = true});

  final bool showAddRemoveButton;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: 20,
      shrinkWrap: true,
      separatorBuilder: (_, __) => const SizedBox(height: TSizes.spaceBtwSections),
      itemBuilder: (_, index) => Column(
        children: [
          const TItemCart(),
          showAddRemoveButton ? const SizedBox(height: TSizes.spaceBtwItems) : const SizedBox(),
          showAddRemoveButton ? const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  SizedBox(width: 70),
                  TProductQuantityWithAddRemoveButton(),
                ],
              ),
              TProductPriceText(price: "256")
            ],
          ) : const SizedBox()
        ],
      ),
    );
  }
}
