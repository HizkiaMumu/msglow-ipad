import 'package:flutter/material.dart';

import '../../../../../core/constants/strings.dart';
import '../../../../../core/style/color_palettes.dart';
import '../../../../../core/style/sizes.dart';
import '../../../../../core/utils/utils.dart';
import '../../../../../core/widgets/my_text.dart';
import '../../../../../domain/entities/transaction/order.dart';

class PaymentMethodSection extends StatelessWidget {
  final Order order;

  const PaymentMethodSection({Key? key, required this.order}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MyText(
          text: Strings.metodePembayaran,
          fontSize: Sizes.sp18,
          fontWeight: FontWeight.w500,
          color: ColorPalettes.grey75,
          margin: EdgeInsets.only(
            bottom: Sizes.height10,
          ),
        ),
        SizedBox(
          width: Sizes.width185,
          height: Sizes.height55,
          child: Material(
            elevation: Sizes.radius4,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(Sizes.radius5),
            ),
            color: Colors.white,
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: Sizes.width12,
                vertical: Sizes.height9,
              ),
              child: Builder(builder: (context) {
                final _imageAsset = order.selectedPaymentMethodAsset();
                if (_imageAsset == null) {
                  return MyText(
                    text: capitalizeFirstofEach(order.paymentMethod),
                    fontSize: Sizes.sp22,
                    fontWeight: FontWeight.w500,
                    alignment: Alignment.center,
                  );
                }
                return Image.asset(
                  _imageAsset,
                );
              }),
            ),
          ),
        )
      ],
    );
  }
}
