import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:permission_handler/permission_handler.dart';

import '../../../../../core/constants/strings.dart';
import '../../../../../core/style/color_palettes.dart';
import '../../../../../core/style/sizes.dart';
import '../../../../../core/utils/get_util.dart';
import '../../../../../core/widgets/primary_button.dart';
import '../../../../../core/widgets/secondary_button.dart';
import '../../../../../domain/entities/transaction/order.dart';
import '../../penjualan/detail/footer/print_args.dart';
import '../../penjualan/detail/footer/print_dialog.dart';
import '../cubit/transaction_cubit.dart';
import 'bank_info_view.dart';
import 'customer_info.dart';
import 'date_section.dart';
import 'order_info.dart';
import 'payment_method_section.dart';
import 'payment_status_section.dart';
import 'refund/refund_dialog.dart';

class TransactionListItem extends StatelessWidget {
  final Order order;

  const TransactionListItem({
    Key? key,
    required this.order,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(Sizes.height37),
      decoration: BoxDecoration(
        color: ColorPalettes.bgCard,
        borderRadius: BorderRadius.circular(Sizes.radius15),
      ),
      child: Column(
        children: [
          DateSection(order: order),
          // Divider
          Padding(
            padding: EdgeInsets.symmetric(
              vertical: Sizes.height25,
            ),
            child: Divider(
              height: Sizes.height1,
              color: ColorPalettes.divider2,
            ),
          ),
          // Customer & Product info section
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 4,
                child: Column(
                  children: [
                    CustomerInfo(
                      customer: order.customer,
                    ),
                    SizedBox(
                      height: Sizes.height79,
                    ),
                    Row(
                      children: [
                        PaymentMethodSection(
                          order: order,
                        ),
                        SizedBox(
                          width: Sizes.width43,
                        ),
                        PaymentStatusSection(
                          order: order,
                        ),
                      ],
                    ),
                    SizedBox(height: Sizes.height30),
                    BankInfoView(order: order)
                  ],
                ),
              ),
              SizedBox(
                width: Sizes.width20,
              ),
              Expanded(
                flex: 6,
                child: OrderInfo(
                  order: order,
                ),
              ),
            ],
          ),
          SizedBox(
            height: Sizes.height37,
          ),
          Row(
            children: [
              Expanded(
                child: SecondaryButton(
                  text: Strings.refund,
                  onPressed: _onPressRefund,
                ),
              ),
              SizedBox(
                width: Sizes.width62,
              ),
              Expanded(
                child: PrimaryButton(
                  text: Strings.cetak,
                  width: double.infinity,
                  onPressed: _onPressPrint,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  _onPressPrint() async {
    await _showPrintDialog();
  }

  _showPrintDialog() async {
    final _permissions = await [
      Permission.location,
      Permission.locationWhenInUse,
      Permission.locationAlways
    ].request();

    await GetUtil.showDialog(
      PrintDialog(
        args: PrintArgs(
          printData: order.toPrintData(),
          onSuccessPrint: _onSuccessPrint,
          closingResponse: null,
        ),
      ),
    );
  }

  _onSuccessPrint() {
    if (order.isPrinted != true) {
      GetUtil.context.read<TransactionCubit>().updatePrintStatus(order.id);
    }
  }

  _onPressRefund() {
    GetUtil.showDialog(RefundDialog(
      onPressPositive: (value) {
        GetUtil.context.read<TransactionCubit>().refundOrder(
              orderId: order.id ?? -1,
              refundNote: value,
            );
      },
    ));
  }
}
