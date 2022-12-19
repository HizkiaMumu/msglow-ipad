import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../core/constants/strings.dart';
import '../../../../../../core/style/color_palettes.dart';
import '../../../../../../core/style/sizes.dart';
import '../../../../../../core/widgets/my_text.dart';
import '../../cubit/penjualan_cubit.dart';
import 'order_item.dart';

class OrderList extends StatelessWidget {
  const OrderList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: Sizes.height10,
      ),
      child: BlocBuilder<PenjualanCubit, PenjualanState>(
        buildWhen: (previous, current) =>
            previous.orderState != current.orderState,
        builder: (context, state) {
          if (state.orderItems.isEmpty) {
            return MyText(
              text: Strings.msgOrderProductPlaced,
              fontSize: Sizes.sp18,
              color: ColorPalettes.greyText,
            );
          }

          return Wrap(
            runSpacing: Sizes.height16,
            children: state.orderItems
                .map((e) => OrderItem(
                      orderProduct: e,
                      index: state.orderItems.indexOf(e),
                    ))
                .toList(),
          );
        },
      ),
    );
  }
}
