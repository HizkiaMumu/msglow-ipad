import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../core/constants/strings.dart';
import '../../../../../../core/style/color_palettes.dart';
import '../../../../../../core/style/sizes.dart';
import '../../../../../../core/utils/get_util.dart';
import '../../../../../../core/widgets/my_text.dart';
import '../../../../../../domain/entities/penjualan/order_product.dart';
import '../../../../../../domain/entities/penjualan/product.dart';
import '../../../../../../domain/entities/penjualan/product_price.dart';
import '../../cubit/penjualan_cubit.dart';

class PriceCategoryDropdown extends StatelessWidget {
  final int index;
  final OrderProduct orderProduct;
  final List<ProductPrice>? productPriceQty;

  const PriceCategoryDropdown({
    Key? key,
    required this.index,
    required this.orderProduct,
    required this.productPriceQty,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _selectedCustomer = context
        .select((PenjualanCubit element) => element.state.selectedCustomer);

    return BlocListener<PenjualanCubit, PenjualanState>(
      listenWhen: (previous, current) =>
          previous.selectedCustomer != current.selectedCustomer,
      listener: (context, state) {
        final _costCategory = orderProduct.product
            .getCostCategories(state.selectedCustomer)
            .firstWhereOrNull((element) =>
                element.id == state.orderItems[index].costCategory?.id);

        if (_costCategory == null) {
          return;
        }
        GetUtil.context
            .read<PenjualanCubit>()
            .changeOrderCostCategory(index, _costCategory);
      },
      child: Container(
        width: Sizes.width150,
        height: Sizes.height28,
        margin: EdgeInsets.only(
          top: Sizes.height7,
        ),
        decoration: BoxDecoration(
          color: ColorPalettes.bgGrey2,
          boxShadow: kElevationToShadow[1],
        ),
        child: PopupMenuButton<CostCategory>(
          color: ColorPalettes.bgGrey2,
          elevation: Sizes.radius2,
          padding: EdgeInsets.zero,
          offset: Offset(Sizes.width26, Sizes.height26),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: Sizes.width5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: MyText(
                    text: orderProduct.costCategory?.name ??
                        Strings.priceCategory,
                    fontSize: Sizes.sp11,
                    color: ColorPalettes.greyText4,
                    fontWeight: FontWeight.w500,
                    margin: EdgeInsets.only(
                      right: Sizes.width5,
                    ),
                  ),
                ),
                Icon(
                  Icons.keyboard_arrow_down_rounded,
                  size: Sizes.height9,
                )
              ],
            ),
          ),
          enabled: true,
          onSelected: (value) {
            GetUtil.context
                .read<PenjualanCubit>()
                .changeOrderCostCategory(index, value);
          },
          itemBuilder: (context) => orderProduct.product
              .getCostCategories(_selectedCustomer)
              .map(
                (e) => PopupMenuItem(
                  padding: EdgeInsets.zero,
                  child: SizedBox(
                    // width: Sizes.width108,
                    child: MyText(
                      text: e.name,
                      fontSize: Sizes.sp11,
                      color: ColorPalettes.greyText4,
                      fontWeight: FontWeight.w500,
                      margin: EdgeInsets.symmetric(
                        horizontal: Sizes.width7,
                      ),
                      alignment: Alignment.centerLeft,
                    ),
                  ),
                  value: e,
                  height: Sizes.height26,
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
