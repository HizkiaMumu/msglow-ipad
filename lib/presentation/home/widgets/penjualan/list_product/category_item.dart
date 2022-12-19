import 'package:flutter/material.dart';

import '../../../../../core/style/sizes.dart';
import '../../../../../core/widgets/my_cached_network_image.dart';
import '../../../../../core/widgets/my_text.dart';
import '../../../../../data/remote/response/penjualan/product_categories_and_packages_response.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({Key? key, required this.category, required this.callback}) : super(key: key);
  final ProductCategory category;
  final VoidCallback callback;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: callback,
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(Sizes.radius10),
        ),
        padding: EdgeInsets.all(Sizes.width8),
        elevation: 0,
      ),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(Sizes.radius10),
            child: Stack(
              children: [
                MyCachedNetworkImage(
                  imageUrl: category.image,
                  width: double.infinity,
                  height: Sizes.height200,
                  progressColor: Colors.white,
                ),
              ],
            ),
          ),
          SizedBox(
            height: Sizes.height10,
          ),
          // Product name
          MyText(
            text: category.name,
            color: Colors.white,
            fontSize: Sizes.sp18,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            fontWeight: FontWeight.w500,
            lineHeight: Sizes.sp33 / Sizes.sp18,
            textAlign: TextAlign.center,
          ),
          // product stock
          // Product price
          MyText(
            text: "Jumlah Produk: ${category.products.length}",
            color: Colors.white,
            fontSize: Sizes.sp20,
            textType: TextType.bodyText1,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            fontWeight: FontWeight.w700,
            lineHeight: Sizes.sp33 / Sizes.sp20,
          ),
        ],
      ),
    );
  }
}
