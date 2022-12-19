import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../../core/style/color_palettes.dart';
import '../../../../../../../core/style/sizes.dart';
import '../../../../../../../core/utils/get_util.dart';
import '../../../../../../../domain/entities/penjualan/e_wallet_item_data.dart';
import '../../../../../../../domain/entities/penjualan/payment_method.dart';
import '../../../cubit/penjualan_cubit.dart';
import '../payment_card_item.dart';

class EWalletListItem extends StatelessWidget {
  final EWalletItemData data;

  const EWalletListItem({
    Key? key,
    required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _borderSide = context.select((PenjualanCubit value) {
      if (value.state.paymentMethod.selectedEWallet == data) {
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
          selectedEWallet: data,
        ));
  }
}
