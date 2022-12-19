import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../../core/constants/image_asset.dart';
import '../../../../../../core/style/color_palettes.dart';
import '../../../../../../core/style/sizes.dart';
import '../../../../../../core/utils/get_util.dart';
import '../../../../../../core/utils/range_formatter.dart';
import '../../../../../../core/utils/utils.dart';
import '../../../../../../core/widgets/my_cached_network_image.dart';
import '../../../../../../core/widgets/my_text.dart';
import '../../../../../../domain/entities/penjualan/order_product.dart';
import '../../cubit/penjualan_cubit.dart';
import 'pre_order_checkbox.dart';
import 'price_category_dropdown.dart';

class OrderItem extends StatefulWidget {
  final int index;
  final OrderProduct orderProduct;

  const OrderItem({
    Key? key,
    required this.orderProduct,
    required this.index,
  }) : super(key: key);

  @override
  State<OrderItem> createState() => _OrderItemState();
}

class _OrderItemState extends State<OrderItem> {
  TextEditingController? _quantityController;
  TextEditingController? _noteController;
  FocusNode? _quantityFocusNode;
  FocusNode? _noteFocusNode;

  @override
  void initState() {
    _quantityController = TextEditingController(text: widget.orderProduct.quantity.toString());
    _noteController = widget.orderProduct.isCustomProduct
        ? TextEditingController(text: widget.orderProduct.product.description)
        : TextEditingController(text: widget.orderProduct.note);
    _quantityFocusNode = FocusNode();
    _noteFocusNode = FocusNode();
    super.initState();
  }

  @override
  void dispose() {
    _quantityController?.dispose();
    _quantityFocusNode?.dispose();
    _noteController?.dispose();
    _noteFocusNode?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final _standardPrice = widget.orderProduct.product.getStandardPriceInInt();
    final _productPrice =
        int.parse(widget.orderProduct.costCategory?.amount ?? widget.orderProduct.product.standardPrice);
    final _shouldVisiblePreviousPrice =
        (widget.orderProduct.costCategory?.id ?? 0) > 0 && _productPrice != _standardPrice;

    _quantityController
      ?..text = widget.orderProduct.quantity.toString()
      ..selection = TextSelection.collapsed(offset: widget.orderProduct.quantity.toString().length);

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Product image
        Column(
          children: [
            Material(
              borderRadius: BorderRadius.circular(Sizes.radius8),
              elevation: Sizes.radius4,
              color: ColorPalettes.bgGrey3,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(Sizes.radius8),
                child: Builder(builder: (context) {
                  if (widget.orderProduct.isCustomProduct) {
                    return Image.asset(
                      ImageAsset.imgCustomOrder,
                      width: Sizes.height78,
                      height: Sizes.height78,
                    );
                  }
                  return MyCachedNetworkImage(
                    imageUrl: widget.orderProduct.product.thumbnail,
                    width: Sizes.height78,
                    height: Sizes.height78,
                  );
                }),
              ),
            ),
            !widget.orderProduct.isProductPakage && !widget.orderProduct.isCustomProduct
                ? PreOrderCheckbox(
                    value: widget.orderProduct.isPreOrder,
                    onChanged: (value) {
                      GetUtil.context.read<PenjualanCubit>().updatePreOrder(widget.orderProduct, value ?? false);
                    },
                  )
                : const SizedBox.shrink()
          ],
        ),
        SizedBox(
          width: Sizes.width37,
        ),
        // Product info
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MyText(
                text: widget.orderProduct.product.name ?? '-',
                fontSize: Sizes.sp16,
                fontWeight: FontWeight.w500,
                textType: TextType.bodyText1,
              ),
              SizedBox(
                height: Sizes.height7,
              ),
              Row(
                children: [
                  MyText(
                    text: formatToIdr(_productPrice),
                    fontSize: Sizes.sp14,
                    fontWeight: FontWeight.w500,
                    textType: TextType.bodyText1,
                    color: ColorPalettes.greyText3,
                  ),
                  Visibility(
                    visible: _shouldVisiblePreviousPrice,
                    child: MyText(
                      text: formatToIdr(_standardPrice),
                      fontSize: Sizes.sp14,
                      fontWeight: FontWeight.w500,
                      textType: TextType.bodyText1,
                      color: ColorPalettes.greyText3,
                      margin: EdgeInsets.only(
                        left: Sizes.width8,
                      ),
                      decoration: TextDecoration.lineThrough,
                    ),
                  ),
                ],
              ),

              // Menu kategori harga
              Visibility(
                visible: !widget.orderProduct.isCustomProduct || widget.orderProduct.isProductPakage,
                maintainState: true,
                maintainAnimation: true,
                maintainSize: false,
                child: PriceCategoryDropdown(
                  index: widget.index,
                  orderProduct: widget.orderProduct,
                  productPriceQty: widget.orderProduct.product.productPriceQuantities,
                ),
              ),
              const SizedBox(height: 8),
              SizedBox(
                width: Sizes.width150,
                child: TextField(
                  controller: _noteController,
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    fillColor: ColorPalettes.bgGrey4,
                    hintStyle: TextStyle(fontSize: 10),
                    hintText: 'Catatan',
                    filled: true,
                    isDense: true,
                  ),
                  onChanged: (val) {
                    GetUtil.context.read<PenjualanCubit>().updateOrderNote(widget.orderProduct, val);
                  },
                  maxLines: 2,
                  style: const TextStyle(fontSize: 10),
                ),
              ),
            ],
          ),
        ),
        // Order quantity
        Card(
          elevation: 0,
          margin: EdgeInsets.only(
            left: Sizes.width14,
          ),
          child: InkWell(
            child: SvgPicture.asset(
              ImageAsset.icMinus,
              height: Sizes.height24,
              width: Sizes.height24,
              color: ColorPalettes.gold,
            ),
            onTap: _onTapRemove,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: Sizes.width18,
          ),
          child: IntrinsicWidth(
            child: TextField(
              controller: _quantityController,
              focusNode: _quantityFocusNode,
              style: TextStyle(
                fontSize: Sizes.sp23,
                fontWeight: FontWeight.w500,
                color: ColorPalettes.gold,
              ),
              keyboardType: TextInputType.number,
              textAlign: TextAlign.center,
              decoration: const InputDecoration(
                border: UnderlineInputBorder(
                  borderSide: BorderSide.none,
                ),
                isCollapsed: true,
              ),
              inputFormatters: [
                FilteringTextInputFormatter.digitsOnly,
                FilteringTextInputFormatter.deny(RegExp(r'^0')),
                RangeFormatter(
                  min: 1,
                  max: int.parse(widget.orderProduct.product.stock ?? '0'),
                )
              ],
              onChanged: (value) => _onChangeQuantity(value),
              onSubmitted: (value) => _onSubmitQuantity(value),
            ),
          ),
        ),
        Card(
          elevation: 0,
          margin: EdgeInsets.zero,
          child: InkWell(
            child: SvgPicture.asset(
              ImageAsset.icPlus,
              height: Sizes.height24,
              width: Sizes.height24,
              color: ColorPalettes.gold,
            ),
            onTap: _onTapAdd,
          ),
        ),
      ],
    );
  }

  _onTapAdd() {
    _quantityFocusNode?.unfocus();
    GetUtil.context.read<PenjualanCubit>().addOrderQuantity(widget.orderProduct);
  }

  _onTapRemove() {
    _quantityFocusNode?.unfocus();
    GetUtil.context.read<PenjualanCubit>().reduceOrderQuantity(widget.orderProduct);
  }

  _onChangeQuantity(String value) {
    final _debounceDurationInMs = value.isEmpty ? 1000 : 0;
    EasyDebounce.debounce(
      'change-quantity',
      Duration(milliseconds: _debounceDurationInMs),
      () {
        GetUtil.context
            .read<PenjualanCubit>()
            .addOrderQuantity(widget.orderProduct, newQuantity: int.parse(value.isEmpty ? '1' : value));
      },
    );
  }

  _onSubmitQuantity(String value) {
    if (value.isNotEmpty) {
      return;
    }

    GetUtil.context.read<PenjualanCubit>().removeOrderItem(widget.orderProduct);
  }
}
