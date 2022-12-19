import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';

import '../../../../../core/style/sizes.dart';
import '../../../../../core/widgets/my_text.dart';
import '../../../../../data/remote/response/penjualan/product_categories_and_packages_response.dart';
import '../../../../../domain/entities/penjualan/product.dart' as product_kasir;
import 'list_product_section_controller.dart';
import 'product_item.dart';

class ListProduct extends GetView<ListProductSectionController> {
  const ListProduct({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: Sizes.height20),
      child: Obx(() {
        final products = controller.productListObs;
        return Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            InkWell(
              onTap: () => controller.setSelectedCategory(null),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Icon(Icons.arrow_back_outlined, color: Colors.white),
                  SizedBox(width: Sizes.height20),
                  MyText(
                      text: "${controller.selectedProductCategoryOs.value?.name}",
                      fontSize: Sizes.sp32,
                      fontWeight: FontWeight.w500,
                      color: Colors.white),
                ],
              ),
            ),
            Expanded(
              child: StaggeredGridView.countBuilder(
                padding: EdgeInsets.all(Sizes.width20),
                crossAxisCount: 3,
                itemCount: products.length,
                itemBuilder: (BuildContext context, int index) {
                  final Product product = products[index];
                  return ProductItem(
                      product: product_kasir.Product(
                          name: product.name,
                          description: product.description,
                          id: product.id,
                          productPrices: [],
                          // productPriceQuantities: [
                          //   ProductPrice(quantity: "1", price: product.hpp.toStringAsFixed(0))
                          // ],
                          productPriceQuantities: product.productPriceQuatities,
                          productPriceQuantity: null,
                          merchantId: product.merchantId,
                          category: product.category,
                          stock: product.stock.toStringAsFixed(0),
                          thumbnail: product.thumbnail,
                          isProductPackage: false));
                },
                staggeredTileBuilder: (int index) => const StaggeredTile.fit(1),
                mainAxisSpacing: Sizes.height55,
                crossAxisSpacing: Sizes.width32,
              ),
            )
          ],
        );
      }),
    );
  }
}
