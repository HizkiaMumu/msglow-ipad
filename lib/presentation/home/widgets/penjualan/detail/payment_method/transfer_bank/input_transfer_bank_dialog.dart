import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

import '../../../../../../../core/constants/strings.dart';
import '../../../../../../../core/style/color_palettes.dart';
import '../../../../../../../core/style/sizes.dart';
import '../../../../../../../core/widgets/my_text.dart';
import '../../../../../../../core/widgets/primary_button.dart';
import '../../../../../../../core/widgets/secondary_button.dart';
import '../../../../../../../data/remote/response/penjualan/bank_account_list_response.dart';
import '../../../../../../../di/injection_container.dart';
import '../../../cubit/penjualan_cubit.dart';

class InputTransferBankDialog extends StatefulWidget {
  String namaPengirim = "";
  String namaBank = "";
  String noRekening = "";
  BankAccount? bankAccount;

  InputTransferBankDialog(
      {Key? key,
      this.namaPengirim = "",
      this.namaBank = "",
      this.noRekening = "",
      this.bankAccount})
      : super(key: key);

  @override
  State<InputTransferBankDialog> createState() =>
      _InputTransferBankDialogState();
}

class _InputTransferBankDialogState extends State<InputTransferBankDialog> {
  late PenjualanCubit _penjualanCubit;
  String namaPengirim = "";
  String namaBank = "";
  String noRekening = "";
  final bankAccountObs = Rxn<BankAccount>();

  @override
  void initState() {
    super.initState();
    namaPengirim = widget.namaPengirim;
    namaBank = widget.namaBank;
    noRekening = widget.noRekening;
    bankAccountObs.value = widget.bankAccount;
    _penjualanCubit = getIt.get();
    _penjualanCubit.fetchBankAccountList();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: AlertDialog(
          elevation: 0,
          backgroundColor: Colors.transparent,
          content: Container(
            padding: EdgeInsets.all(Sizes.height50),
            // height: Sizes.heightHalf,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(Sizes.radius10),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.min,
              children: [
                MyText(
                  text: "Transfer Bank",
                  fontSize: Sizes.sp32,
                  margin: EdgeInsets.only(
                    bottom: Sizes.height20,
                  ),
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      MyText(text: "Rekening\npenerima", fontSize: Sizes.sp20),
                      const SizedBox(width: 20),
                      ConstrainedBox(
                        constraints: BoxConstraints(
                            minWidth: 200,
                            maxWidth: 200,
                            minHeight: Sizes.height90),
                        child: BlocProvider.value(
                          value: _penjualanCubit,
                          child: Container(
                            alignment: Alignment.centerLeft,
                            decoration: BoxDecoration(
                                color: ColorPalettes.greyForm2,
                                borderRadius: BorderRadius.circular(4)),
                            child: BlocBuilder<PenjualanCubit, PenjualanState>(
                              buildWhen: (previous, current) =>
                                  previous.fetchBankAccountsResult !=
                                  current.fetchBankAccountsResult,
                              builder: (context, state) {
                                return state.fetchBankAccountsResult.when(
                                  initial: () => const SizedBox.shrink(),
                                  loading: () => const Center(
                                    child: SizedBox(
                                      width: 24,
                                      height: 24,
                                      child: CircularProgressIndicator(),
                                    ),
                                  ),
                                  success: _buildDropdown,
                                  error: (error) => const Text("error"),
                                );
                              },
                            ),
                          ),
                        ),
                        // child: TextField(onChanged: (v) => namaPengirim = v)
                      )
                    ]),
                const SizedBox(height: 8),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      MyText(text: "Nama pengirim", fontSize: Sizes.sp20),
                      const SizedBox(width: 20),
                      ConstrainedBox(
                        constraints:
                            const BoxConstraints(minWidth: 200, maxWidth: 200),
                        child: TextFormField(
                            initialValue: namaPengirim,
                            decoration: InputDecoration(
                              errorStyle: TextStyle(
                                fontSize: Sizes.sp18,
                                height: 1,
                              ),
                              isDense: true,
                              filled: true,
                              contentPadding: EdgeInsets.symmetric(
                                vertical: Sizes.height24,
                                horizontal: Sizes.width16,
                              ),
                              fillColor: ColorPalettes.greyForm2,
                              border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius:
                                    BorderRadius.circular(Sizes.radius6),
                              ),
                            ),
                            onChanged: (v) => namaPengirim = v),
                        // child: TextField(onChanged: (v) => namaPengirim = v)
                      )
                    ]),
                const SizedBox(height: 8),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      MyText(text: "Nama bank", fontSize: Sizes.sp20),
                      const SizedBox(width: 20),
                      ConstrainedBox(
                        constraints:
                            const BoxConstraints(minWidth: 200, maxWidth: 200),
                        child: TextFormField(
                            initialValue: namaBank,
                            decoration: InputDecoration(
                              errorStyle: TextStyle(
                                fontSize: Sizes.sp18,
                                height: 1,
                              ),
                              isDense: true,
                              filled: true,
                              contentPadding: EdgeInsets.symmetric(
                                vertical: Sizes.height24,
                                horizontal: Sizes.width16,
                              ),
                              fillColor: ColorPalettes.greyForm2,
                              border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius:
                                    BorderRadius.circular(Sizes.radius6),
                              ),
                            ),
                            onChanged: (v) => namaBank = v),
                        // child: TextField(onChanged: (v) => namaPengirim = v)
                      )
                    ]),
                const SizedBox(height: 8),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      MyText(text: "No rekening", fontSize: Sizes.sp20),
                      const SizedBox(width: 20),
                      ConstrainedBox(
                        constraints:
                            const BoxConstraints(minWidth: 200, maxWidth: 200),
                        child: TextFormField(
                            initialValue: noRekening,
                            decoration: InputDecoration(
                              errorStyle: TextStyle(
                                fontSize: Sizes.sp18,
                                height: 1,
                              ),
                              isDense: true,
                              filled: true,
                              contentPadding: EdgeInsets.symmetric(
                                vertical: Sizes.height24,
                                horizontal: Sizes.width16,
                              ),
                              fillColor: ColorPalettes.greyForm2,
                              border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius:
                                    BorderRadius.circular(Sizes.radius6),
                              ),
                            ),
                            onChanged: (v) => noRekening = v),
                        // child: TextField(onChanged: (v) => namaPengirim = v)
                      )
                    ]),
                SizedBox(height: Sizes.height60),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SecondaryButton(
                      height: Sizes.height66,
                      width: Sizes.width170,
                      text: Strings.cancel,
                      onPressed: () => Get.back(),
                    ),
                    const SizedBox(width: 20),
                    PrimaryButton(
                      height: Sizes.height66,
                      width: Sizes.width170,
                      text: Strings.simpan,
                      onPressed: () => Get.back(result: {
                        "nama_pengirim": namaPengirim,
                        "nama_bank": namaBank,
                        "no_rekening": noRekening,
                        "bank_account": bankAccountObs.value?.toJson(),
                      }),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildDropdown(List<BankAccount> data) {
    return Obx(() {
      return DropdownButton<BankAccount?>(
        underline: const SizedBox.shrink(),
        hint: const Center(child: Text("pilih bank")),
        isExpanded: true,
        value: data.isEmpty ? null : bankAccountObs.value,
        items: data
            .map<DropdownMenuItem<BankAccount?>>(
              (e) => DropdownMenuItem<BankAccount?>(
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Center(
                    child: DropdownMenuItem(
                        child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(e.bankName, style: const TextStyle(fontSize: 14)),
                        Text(
                          e.accountNumber,
                          style: const TextStyle(fontSize: 12),
                        ),
                      ],
                    )),
                  ),
                ),
                value: e,
              ),
            )
            .toList(),
        onChanged: (v) => bankAccountObs.value = v,
      );
    });
  }
}
