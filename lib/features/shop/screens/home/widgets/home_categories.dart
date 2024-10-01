import "package:flutter/material.dart";
import "package:get/get.dart";
import "package:t_store/common/widgets/image_text_widgets/vertical_image_text.dart";
import "package:t_store/features/shop/screens/sub_category/sub_categories.dart";

class THomeCategories extends StatelessWidget {
  const THomeCategories({
    super.key, required this.categoryIcons, required this.categoryTitles,
  });

  final List<String> categoryIcons;
  final List<String> categoryTitles;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        itemCount: categoryIcons.length,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (_, index) {
          return TVerticalImageText(
            image: categoryIcons[index].toString(),
            title: categoryTitles[index].toString(),
            onTap: () => Get.to(() => const SubCategoriesScreen()),
          );
        },
      ),
    );
  }
}