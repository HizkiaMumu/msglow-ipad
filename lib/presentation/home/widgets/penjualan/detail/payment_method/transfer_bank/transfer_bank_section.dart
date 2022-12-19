import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../../core/constants/strings.dart';
import '../../../../../../../core/style/color_palettes.dart';
import '../../../../../../../core/style/sizes.dart';
import '../../../../../../../core/widgets/my_text.dart';
import '../../../../../../../domain/entities/penjualan/transfer_bank_item_data.dart';
import '../../../cubit/penjualan_cubit.dart';
import 'transfer_bank_list_item.dart';

class TransferBankSection extends StatelessWidget {
  const TransferBankSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final data = TransferBankItemData.items[0];
    return Padding(
      padding: EdgeInsets.only(top: Sizes.height54, left: Sizes.width20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MyText(
                text: Strings.transferBank,
                fontSize: Sizes.sp18,
                fontWeight: FontWeight.w700,
              ),
              SizedBox(height: Sizes.height17),
              // const TransferBankList(),
              TransferBankListItem(data: data)
            ],
          ),
          Expanded(
            child: Padding(
              padding:
                  EdgeInsets.only(left: Sizes.width20, right: Sizes.width20),
              child: BlocBuilder<PenjualanCubit, PenjualanState>(
                builder: (context, state) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const MyText(text: Strings.pengirim),
                      (data.namaPengirim?.isEmpty ?? true) &&
                              (data.namaBank?.isEmpty ?? true) &&
                              (data.namaPengirim?.isEmpty ?? true)
                          ? const SizedBox()
                          : Container(
                              padding: EdgeInsets.fromLTRB(
                                Sizes.width8,
                                Sizes.width4,
                                Sizes.width8,
                                Sizes.width4,
                              ),
                              color: ColorPalettes.greyForm,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  MyText(
                                      fontSize: Sizes.sp17,
                                      text: TransferBankItemData
                                              .items[0].namaPengirim ??
                                          ""),
                                  MyText(
                                      fontSize: Sizes.sp17,
                                      text: TransferBankItemData
                                              .items[0].namaBank ??
                                          "",
                                      color: ColorPalettes.gold),
                                  MyText(
                                      fontSize: Sizes.sp17,
                                      text: TransferBankItemData
                                              .items[0].noRekening ??
                                          ""),
                                ],
                              ),
                            ),
                      SizedBox(height: Sizes.height5),
                      const MyText(text: Strings.penerima),
                      data.bankAccount == null
                          ? const SizedBox.shrink()
                          : Container(
                              padding: EdgeInsets.fromLTRB(
                                Sizes.width8,
                                Sizes.width4,
                                Sizes.width8,
                                Sizes.width4,
                              ),
                              color: ColorPalettes.greyForm,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  MyText(
                                      fontSize: Sizes.sp17,
                                      text:
                                          data.bankAccount?.accountName ?? ""),
                                  MyText(
                                      fontSize: Sizes.sp17,
                                      text: data.bankAccount?.bankName ?? "",
                                      color: ColorPalettes.gold),
                                  MyText(
                                      fontSize: Sizes.sp17,
                                      text: data.bankAccount?.accountNumber ??
                                          ""),
                                ],
                              ),
                            ),
                    ],
                  );
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
