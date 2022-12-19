import 'package:flutter/material.dart';

import '../../../../../core/style/sizes.dart';
import 'change_customer/change_customer_card.dart';
import 'detail_title.dart';
import 'footer/detail_footer.dart';
import 'order/detail_order_card.dart';
import 'payment_method/payment_method_card.dart';

class DetailSection extends StatelessWidget {
  const DetailSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return SizedBox(
          width: Sizes.width539,
          height: constraints.maxHeight,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const DetailTitle(),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: Sizes.width27,
                  ),
                  child: Column(
                    children: [
                      const ChangeCustomerCard(),
                      const DetailOrderCard(),
                      const PaymentMethodCard(),
                      const DetailFooter(),
                      SizedBox(
                        height: Sizes.height51,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
