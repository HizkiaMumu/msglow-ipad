import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/constants/strings.dart';
import '../../../../../core/style/color_palettes.dart';
import '../../../../../core/style/sizes.dart';
import '../../../../../core/utils/get_util.dart';
import '../../../../../core/utils/utils.dart';
import '../../../../../core/widgets/my_text.dart';
import '../../../../../domain/entities/transaction/order.dart';
import '../../../../../domain/entities/transaction/transaction_order_product.dart';
import '../cubit/transaction_cubit.dart';
import 'pre_order_dialog.dart';

class OrderInfo extends StatelessWidget {
  final Order order;

  const OrderInfo({Key? key, required this.order}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildOrderProduct(context),
        _buildOrderPackage(),
        _buildCustomOrder(context),
        SizedBox(height: Sizes.height30),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Cash Payment
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  MyText(
                    text: Strings.labelCashPayment,
                    fontSize: Sizes.sp18,
                    fontWeight: FontWeight.w500,
                    color: ColorPalettes.grey75,
                  ),
                  MyText(
                    text: formatToIdr(int.parse(order.cashAmount ?? '0')),
                    fontSize: Sizes.sp24,
                    fontWeight: FontWeight.w500,
                    color: ColorPalettes.grey75,
                  ),
                ],
              ),
            ),
            // Total payment
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  MyText(
                    text: Strings.labelPaymentTotal,
                    fontSize: Sizes.sp18,
                    fontWeight: FontWeight.w500,
                    color: ColorPalettes.grey75,
                  ),
                  MyText(
                    text: formatToIdr(int.parse(order.productCost ?? '0')),
                    fontSize: Sizes.sp24,
                    fontWeight: FontWeight.w500,
                    color: ColorPalettes.grey75,
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildCustomOrder(BuildContext context) {
    if (order.isOrderCustomExist) {
      return Padding(
        padding: EdgeInsets.only(
          top: Sizes.height30,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Product name
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  MyText(
                    text: Strings.labelCustomProduct,
                    fontSize: Sizes.sp18,
                    fontWeight: FontWeight.w500,
                    color: ColorPalettes.grey75,
                  ),
                  // MyText(
                  //   text: '${order.orderCustoms?.map((e) => e.product).join(', ')}',
                  //   fontSize: Sizes.sp24,
                  //   fontWeight: FontWeight.w500,
                  //   color: ColorPalettes.grey75,
                  //   textAlign: TextAlign.end,
                  // ),
                  Column(
                    children: order.orderCustoms!.map((e) {
                      return Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Expanded(
                            child: MyText(
                              text: "${e.product}",
                              fontSize: Sizes.sp24,
                              fontWeight: FontWeight.w500,
                              color: ColorPalettes.grey75,
                              textAlign: TextAlign.end,
                            ),
                          ),
                        ],
                      );
                    }).toList(),
                  ),
                  MyText(
                    text: Strings.note,
                    fontSize: Sizes.sp18,
                    fontWeight: FontWeight.w500,
                    color: ColorPalettes.grey75,
                  ),
                  Column(
                    children: order.orderCustoms!
                        .map(
                          (order) => MyText(
                            text: order.description ?? '-',
                            fontSize: Sizes.sp20,
                            fontWeight: FontWeight.w500,
                            color: ColorPalettes.grey75,
                          ),
                        )
                        .toList(),
                  )
                ],
              ),
            ),
            // Total Quantity
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  MyText(
                    text: Strings.labelQuantity,
                    fontSize: Sizes.sp18,
                    fontWeight: FontWeight.w500,
                    color: ColorPalettes.grey75,
                  ),
                  MyText(
                    text: '${order.totalQuantityCustomOrders}',
                    fontSize: Sizes.sp24,
                    fontWeight: FontWeight.w500,
                    color: ColorPalettes.grey75,
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    } else {
      return const SizedBox.shrink();
    }
  }

  _buildOrderProduct(BuildContext context) {
    if (order.isOrderProductExist) {
      return Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Product name
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                MyText(
                  text: Strings.labelProductName,
                  fontSize: Sizes.sp18,
                  fontWeight: FontWeight.w500,
                  color: ColorPalettes.grey75,
                ),
                Column(
                  children: order.orderProducts!.map((e) {
                    return Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Expanded(
                          child: MyText(
                            text: "${e.product?.name}",
                            fontSize: Sizes.sp24,
                            fontWeight: FontWeight.w500,
                            color: ColorPalettes.grey75,
                            textAlign: TextAlign.end,
                          ),
                        ),
                        Visibility(
                          visible: e.isPreOrder == true,
                          child: Row(
                            children: [
                              SizedBox(width: Sizes.width10),
                              SizedBox(
                                height: Sizes.height31,
                                width: Sizes.width40,
                                child: TextButton(
                                  onPressed: () => _onPressPreOrderLabel(e),
                                  style: ButtonStyle(
                                    padding: MaterialStateProperty.all(EdgeInsets.zero),
                                    backgroundColor: MaterialStateProperty.all(ColorPalettes.purple),
                                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(Sizes.radius8),
                                      ),
                                    ),
                                  ),
                                  child: MyText(
                                    text: e.isPreOrder == true ? "PO" : "",
                                    fontSize: Sizes.sp16,
                                    fontWeight: FontWeight.w500,
                                    color: ColorPalettes.grey75,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    );
                  }).toList(),
                ),
                MyText(
                  text: Strings.note,
                  fontSize: Sizes.sp18,
                  fontWeight: FontWeight.w500,
                  color: ColorPalettes.grey75,
                ),
                Column(
                  children: order.orderProducts!
                      .map(
                        (order) => MyText(
                          text: order.note ?? '-',
                          fontSize: Sizes.sp20,
                          fontWeight: FontWeight.w500,
                          color: ColorPalettes.grey75,
                        ),
                      )
                      .toList(),
                )
              ],
            ),
          ),
          // Total Quantity
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                MyText(
                  text: Strings.labelQuantity,
                  fontSize: Sizes.sp18,
                  fontWeight: FontWeight.w500,
                  color: ColorPalettes.grey75,
                ),
                MyText(
                  text: '${order.totalQuantity}',
                  fontSize: Sizes.sp24,
                  fontWeight: FontWeight.w500,
                  color: ColorPalettes.grey75,
                ),
              ],
            ),
          ),
        ],
      );
    } else {
      return const SizedBox.shrink();
    }
  }

  Widget _buildOrderPackage() {
    if (order.orderPackages?.isNotEmpty != true) {
      return const SizedBox.shrink();
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        order.isOrderProductExist ? SizedBox(height: Sizes.height30) : const SizedBox.shrink(),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                MyText(
                  text: Strings.namaPackage,
                  fontSize: Sizes.sp18,
                  fontWeight: FontWeight.w500,
                  color: ColorPalettes.grey75,
                ),
                Column(
                  children: order.orderPackages!.map((e) {
                    return Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Expanded(
                          child: MyText(
                            text: "${e.package.name}",
                            fontSize: Sizes.sp24,
                            fontWeight: FontWeight.w500,
                            color: ColorPalettes.grey75,
                            textAlign: TextAlign.end,
                          ),
                        ),
                      ],
                    );
                  }).toList(),
                ),
                MyText(
                  text: Strings.note,
                  fontSize: Sizes.sp18,
                  fontWeight: FontWeight.w500,
                  color: ColorPalettes.grey75,
                ),
                Column(
                  children: order.orderPackages!
                      .map(
                        (order) => MyText(
                          text: order.note ?? '-',
                          fontSize: Sizes.sp20,
                          fontWeight: FontWeight.w500,
                          color: ColorPalettes.grey75,
                        ),
                      )
                      .toList(),
                )
              ],
            )),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  MyText(
                    text: Strings.labelQuantity,
                    fontSize: Sizes.sp18,
                    fontWeight: FontWeight.w500,
                    color: ColorPalettes.grey75,
                  ),
                  MyText(
                    text: order.orderPackages?.fold<int>(0, (v, element) => v + (element.quantity)).toString() ?? "",
                    fontSize: Sizes.sp24,
                    fontWeight: FontWeight.w500,
                    color: ColorPalettes.grey75,
                  ),
                ],
              ),
            ),
          ],
        )
      ],
    );
  }

  _onPressPreOrderLabel(TransactionOrderProduct product) {
    GetUtil.showDialog(
      PreOrderDialog(
        product: product,
        onPressPositive: () => GetUtil.context.read<TransactionCubit>().updatePreOrderStatus(product.id),
      ),
    );
  }
}
