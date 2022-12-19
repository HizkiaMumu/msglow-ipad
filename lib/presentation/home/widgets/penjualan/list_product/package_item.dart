import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../core/extensions/ext.dart';
import '../../../../../core/style/sizes.dart';
import '../../../../../core/widgets/my_cached_network_image.dart';
import '../../../../../core/widgets/my_text.dart';
import '../../../../../data/remote/response/penjualan/product_categories_and_packages_response.dart';

class PackageItem extends StatelessWidget {
  const PackageItem({Key? key, required this.package, required this.callback}) : super(key: key);
  final ProductPackage package;
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
                  imageUrl: package.image,
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
            text: package.name,
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
            text: "Jumlah Produk: ${package.rPackageProductCount}",
            color: Colors.white,
            fontSize: Sizes.sp20,
            textType: TextType.bodyText1,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            fontWeight: FontWeight.w700,
            lineHeight: Sizes.sp33 / Sizes.sp20,
          ),
          InkWell(
            onTap: _dialogDetailPaket,
            child: Text(
              "Lihat detail paket",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: Sizes.sp20,
                  overflow: TextOverflow.ellipsis,
                  fontWeight: FontWeight.w700,
                  decoration: TextDecoration.underline),
            ),
          ),
          MyText(
            text: "Rp ${package.price.toRupiahString()}",
            color: Colors.white,
          ),
        ],
      ),
    );
  }

  void _dialogDetailPaket() {
    Get.defaultDialog(
        title: "Detail Paket",
        content: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: package.rPackageProduct.map((e) => Text("${e.quantity} ${e.rProduct.name}")).toList(),
        ));
  }
}
