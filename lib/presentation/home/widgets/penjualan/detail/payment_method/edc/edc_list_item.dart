import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../../core/style/color_palettes.dart';
import '../../../../../../../core/style/sizes.dart';
import '../../../../../../../core/utils/get_util.dart';
import '../../../../../../../domain/entities/penjualan/edc_item_data.dart';
import '../../../../../../../domain/entities/penjualan/payment_method.dart';
import '../../../cubit/penjualan_cubit.dart';
import '../payment_card_item.dart';

class EdcListItem extends StatelessWidget {
  final EdcItemData data;

  const EdcListItem({
    Key? key,
    required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _borderSide = context.select((PenjualanCubit value) {
      if (value.state.paymentMethod.selectedEdc == data) {
        return BorderSide(
          width: Sizes.width2,
          color: ColorPalettes.gold,
        );
      }
      return BorderSide.none;
    });
    return PaymentCardItem(
      side: _borderSide,
      onTap: _onTapItem,
      imageAsset: data.imageAsset,
    );
  }

  _onTapItem() {
    GetUtil.context.read<PenjualanCubit>().changePaymentMethod(PaymentMethod(
          selectedEdc: data,
        ));
  }
}
