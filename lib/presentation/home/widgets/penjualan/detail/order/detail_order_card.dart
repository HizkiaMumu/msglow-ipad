import 'package:flutter/material.dart';

import '../../../../../../core/style/sizes.dart';
import '../../../../../../core/widgets/rounded_border_card.dart';
import 'custom_order.dart';
import 'order_list.dart';
import 'total_order_amount.dart';

class DetailOrderCard extends StatelessWidget {
  const DetailOrderCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: Sizes.height30,
      ),
      child: RoundedBorderCard(
        padding: EdgeInsets.symmetric(
          horizontal: Sizes.width20,
          vertical: Sizes.height22,
        ),
        child: Column(
          children: const [
            CustomOrder(),
            OrderList(),
            TotalOrderAmount(),
          ],
        ),
      ),
    );
  }
}
