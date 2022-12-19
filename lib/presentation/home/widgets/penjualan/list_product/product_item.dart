import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/style/sizes.dart';
import '../../../../../core/utils/get_util.dart';
import '../../../../../core/utils/utils.dart';
import '../../../../../core/widgets/my_cached_network_image.dart';
import '../../../../../core/widgets/my_text.dart';
import '../../../../../domain/entities/penjualan/product.dart';
import '../cubit/penjualan_cubit.dart';

class ProductItem extends StatelessWidget {
  final Product product;

  const ProductItem({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: _onPressItem,
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
                  imageUrl: product.thumbnail,
                  width: double.infinity,
                  height: Sizes.height200,
                  progressColor: Colors.white,
                ),
                if (product.promo != null)
                  Positioned(
                    right: -50,
                    top: 30,
                    child: Transform.rotate(
                      angle: 2 * pi / 7.0,
                      child: Container(
                        width: Sizes.width200,
                        color: Colors.red,
                        child: MyText(
                          margin: EdgeInsets.symmetric(
                            // horizontal: Sizes.width40,
                            vertical: Sizes.height10,
                          ),
                          text: product.promo?.title ?? '-',
                          color: Colors.white,
                          fontSize: Sizes.sp12,
                          fontWeight: FontWeight.w500,
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
              ],
            ),
          ),
          SizedBox(
            height: Sizes.height10,
          ),
          // Product name
          MyText(
            text: product.name ?? '-',
            color: Colors.white,
            fontSize: Sizes.sp18,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            fontWeight: FontWeight.w500,
            lineHeight: Sizes.sp33 / Sizes.sp18,
            textAlign: TextAlign.center,
          ),
          // product stock
          MyText(
            text: 'Stok: ${product.stock ?? '-'}',
            color: Colors.white,
            fontSize: Sizes.sp18,
            fontWeight: FontWeight.w500,
            lineHeight: Sizes.sp33 / Sizes.sp18,
          ),
          // Product price
          MyText(
            text: formatToIdr(int.parse(product.productPriceQuantities?.first.price ?? '0')),
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

  _onPressItem() {
    GetUtil.context.read<PenjualanCubit>().addOrderItem(product);
  }
}
