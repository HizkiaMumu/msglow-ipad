import 'package:flutter/material.dart';

import '../../../../../core/style/color_palettes.dart';
import '../../../../../core/style/sizes.dart';
import '../../../../../core/utils/date_util.dart';
import '../../../../../core/widgets/my_text.dart';
import '../../../../../domain/entities/transaction/order.dart';

class DateSection extends StatelessWidget {
  final Order order;

  const DateSection({Key? key, required this.order}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final date = DateUtil.dateTimeToFormattedDate(
      order.createdAt,
      datePattern: 'EEEE, dd MMM yyyy',
    );
    final time =
        '${DateUtil.dateTimeToFormattedDate(order.createdAt, datePattern: 'HH.mm ')} '
        '${order.createdAt?.toLocal().timeZoneName}';

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        MyText(
          text: '$date $time',
          fontSize: Sizes.sp18,
          color: ColorPalettes.grey75,
        ),
        MyText(
          text: order.user?.name ?? '-',
          fontSize: Sizes.sp18,
          color: ColorPalettes.grey75,
        ),
      ],
    );
  }
}
