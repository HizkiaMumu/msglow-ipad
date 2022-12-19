import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

import '../../../../../../../core/style/color_palettes.dart';
import '../../../../../../../core/style/sizes.dart';
import '../../../../../../../core/utils/get_util.dart';
import '../../../../../../../data/remote/response/penjualan/bank_account_list_response.dart';
import '../../../../../../../data/remote/response/penjualan/safe_convert.dart';
import '../../../../../../../domain/entities/penjualan/payment_method.dart';
import '../../../../../../../domain/entities/penjualan/transfer_bank_item_data.dart';
import '../../../cubit/penjualan_cubit.dart';
import '../payment_card_item.dart';
import 'input_transfer_bank_dialog.dart';

class TransferBankListItem extends StatelessWidget {
  final TransferBankItemData data;

  const TransferBankListItem({
    Key? key,
    required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _borderSide = context.select((PenjualanCubit value) {
      if (value.state.paymentMethod.selectedTransferBank == data) {
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
    Get.dialog(
            InputTransferBankDialog(
              namaPengirim: data.namaPengirim ?? "",
              namaBank: data.namaBank ?? "",
              noRekening: data.noRekening ?? "",
              bankAccount: data.bankAccount,
            ),
            barrierDismissible: false)
        .then((value) {
      if (value != null && value is Map<String, dynamic>) {
        data.namaPengirim = value['nama_pengirim'];
        data.namaBank = value['nama_bank'];
        data.noRekening = value['no_rekening'];
        data.bankAccount = BankAccount.fromJson(
            asMap(value, 'bank_account', defaultValue: null));
        final cubit = GetUtil.context.read<PenjualanCubit>();
        cubit.changePaymentMethod(
            const PaymentMethod(selectedTransferBank: null));
        cubit.changePaymentMethod(PaymentMethod(selectedTransferBank: data));
      }
    });
  }
}
