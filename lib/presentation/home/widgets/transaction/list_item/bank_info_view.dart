import 'package:flutter/material.dart';

import '../../../../../core/style/color_palettes.dart';
import '../../../../../core/widgets/my_text.dart';
import '../../../../../domain/entities/transaction/order.dart';

class BankInfoView extends StatelessWidget {
  final Order order;

  const BankInfoView({Key? key, required this.order}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (order.paymentMethod == "transfer") {
      return Row(
        children: [
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const MyText(text: "Pengirim:"),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MyText(text: order.transferNamaPengirim ?? ''),
                    MyText(
                      text: order.transferNamabank ?? '',
                      color: ColorPalettes.gold,
                    ),
                    MyText(text: order.transferNomorPrekening ?? ''),
                  ],
                ),
              ),
            ],
          )),
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const MyText(text: "Penerima:"),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MyText(text: order.bankAccount?.accountName ?? ''),
                    MyText(
                      text: order.bankAccount?.bankName ?? '',
                      color: ColorPalettes.gold,
                    ),
                    MyText(text: order.bankAccount?.accountNumber ?? ''),
                  ],
                ),
              ),
            ],
          ))
        ],
      );
    }
    return Container();
  }
}
