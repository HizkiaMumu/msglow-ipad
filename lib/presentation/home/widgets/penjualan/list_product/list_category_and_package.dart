import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';

import '../../../../../core/constants/strings.dart';
import '../../../../../core/style/sizes.dart';
import '../../../../../core/utils/get_util.dart';
import '../../../../../core/widgets/my_text.dart';
import '../../../../../data/remote/response/penjualan/product_categories_and_packages_response.dart';
import '../../../../../domain/entities/penjualan/product.dart' as product_kasir;
import '../../../../../domain/entities/penjualan/product_price.dart';
import '../cubit/penjualan_cubit.dart';
import 'category_item.dart';
import 'list_product_section_controller.dart';
import 'package_item.dart';

class ListCategoryAndPackage extends GetView<ListProductSectionController> {
  const ListCategoryAndPackage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: _refreshData,
      child: Obx(() {
        return SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: MyText(
                  text: Strings.kategoriProduk,
                  fontSize: Sizes.sp32,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
              _buildCategory(),
              SizedBox(height: Sizes.height20),
              Padding(
                padding: EdgeInsets.only(left: Sizes.height20),
                child: MyText(
                  text: Strings.produkPaket,
                  fontSize: Sizes.sp32,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
              _buildPakage(),
            ],
          ),
        );
      }),
    );
  }

  Future<void> _refreshData() async {
    await Future.delayed(const Duration(milliseconds: 200), controller.loadProductCategoryAndPackages);
  }

  Widget _buildCategory() {
    return Padding(
      padding: EdgeInsets.all(Sizes.height20),
      child: StaggeredGridView.countBuilder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        crossAxisCount: 3,
        itemCount: controller.productCategoryListObs.length,
        itemBuilder: (BuildContext context, int index) {
          final ProductCategory category = controller.productCategoryListObs.value[index];
          return CategoryItem(
            category: category,
            callback: () => controller.setSelectedCategory(category),
          );
        },
        staggeredTileBuilder: (int index) => const StaggeredTile.fit(1),
        mainAxisSpacing: Sizes.height55,
        crossAxisSpacing: Sizes.width32,
      ),
    );
  }

  Widget _buildPakage() {
    return Padding(
      padding: EdgeInsets.all(Sizes.height20),
      child: StaggeredGridView.countBuilder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        crossAxisCount: 3,
        itemCount: controller.productPackageListObs.length,
        itemBuilder: (BuildContext context, int index) {
          ProductPackage package = controller.productPackageListObs[index];
          return PackageItem(
            package: package,
            callback: () {
              product_kasir.Product product = product_kasir.Product(
                description: "",
                name: package.name,
                thumbnail: package.image,
                // productPriceQuantities: [
                //   ProductPrice(
                //       quantity: package.rPackageProductCount.toStringAsFixed(0),
                //       price: package.price.toStringAsFixed(0))
                // ],
                productPrices: package.packagePrices
                    .map((e) => ProductPrice(
                          quantity: "1",
                          price: e.price,
                          statusCustomerId: e.statusCustomerId,
                        ))
                    .toList(),
                productPriceQuantities: package.packagePriceQuantities
                    .map((e) => ProductPrice(
                          quantity: e.quantity,
                          price: e.price,
                        ))
                    .toList(),
                productPriceQuantity: null,
                id: package.id,
                isProductPackage: true,
              );
              GetUtil.context.read<PenjualanCubit>().addOrderItem(product);
            },
          );
        },
        staggeredTileBuilder: (int index) => const StaggeredTile.fit(1),
        mainAxisSpacing: Sizes.height55,
        crossAxisSpacing: Sizes.width32,
      ),
    );
  }
}
