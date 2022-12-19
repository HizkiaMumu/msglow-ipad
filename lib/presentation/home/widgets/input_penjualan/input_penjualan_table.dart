import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/constants/strings.dart';
import '../../../../core/extensions/ext.dart';
import '../../../../core/style/color_palettes.dart';
import '../../../../core/style/sizes.dart';
import '../../../../core/utils/date_util.dart';
import '../../../../core/utils/get_util.dart';
import '../../../../core/widgets/my_error_widget.dart';
import '../../../../core/widgets/my_text.dart';
import '../../../../core/widgets/primary_button.dart';
import '../../../../data/remote/response/input_penjualan/kas_response.dart';
import '../../../../data/remote/response/input_penjualan/list_pengeluaran_response.dart';
import '../../cubit/home_cubit.dart';
import 'add_pengeluaran_baru_dialog.dart';
import 'cubit/input_penjualan_cubit.dart';

class InputPenjualanTable extends StatelessWidget {
  const InputPenjualanTable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<HomeCubit, HomeState>(
      listenWhen: (previous, current) =>
          previous.selectedMenuItemIndex != current.selectedMenuItemIndex,
      listener: (context, state) {
        if (state.selectedMenuItemIndex == 2) {
          context.read<InputPenjualanCubit>().changeFilterDate(null);
        }
      },
      child: BlocBuilder<InputPenjualanCubit, InputPenjualanState>(
        buildWhen: (previous, current) =>
            previous.fetchListPengeluaranResult !=
            current.fetchListPengeluaranResult,
        builder: (context, state) {
          return state.fetchListPengeluaranResult.when(
            initial: () => const SizedBox.shrink(),
            loading: () => const Center(
              child: CircularProgressIndicator(
                color: Colors.white,
              ),
            ),
            success: (data) => _buildTable(data),
            error: (failure) => MyErrorWidget(
              failure: failure,
              onPressed: () {
                context.read<InputPenjualanCubit>().fetchListPenjualan();
              },
            ),
          );
        },
      ),
    );
  }

  Widget _buildTable(ListPengeluaranResponse data) {
    if (data.kas?.isEmpty ?? true) {
      return MyText(
        text: Strings.msgEmptyHistoryPengeluaran,
        fontSize: Sizes.sp20,
        fontWeight: FontWeight.w500,
        alignment: Alignment.center,
      );
    }

    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: Sizes.width25,
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              MyText(
                text: Strings.historyPengeluaran,
                fontSize: Sizes.sp24,
                color: Colors.white,
                fontWeight: FontWeight.w500,
              ),
              PrimaryButton(
                text: Strings.add,
                color: ColorPalettes.goldDark2,
                onPressed: () => _onPressedAdd(),
              ),
            ],
          ),
          SingleChildScrollView(
            child: Container(
              color: ColorPalettes.bgGrey4,
              padding: EdgeInsets.all(Sizes.height10),
              margin: EdgeInsets.only(
                top: Sizes.height10,
              ),
              child: Table(
                defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                columnWidths: const {
                  0: FractionColumnWidth(0.05),
                  1: FractionColumnWidth(0.13),
                  3: FractionColumnWidth(0.04),
                },
                border: TableBorder.all(
                  color: ColorPalettes.goldDark,
                ),
                children: [
                  // title
                  TableRow(
                    decoration: BoxDecoration(
                      color: ColorPalettes.bgGoldOp10,
                    ),
                    children: [
                      MyText(
                        text: Strings.tgl,
                        fontWeight: FontWeight.bold,
                        fontSize: Sizes.sp14,
                        margin: EdgeInsets.all(Sizes.height4),
                        color: ColorPalettes.goldDark,
                        textAlign: TextAlign.center,
                      ),
                      MyText(
                        text: Strings.keterangan,
                        fontWeight: FontWeight.bold,
                        fontSize: Sizes.sp14,
                        margin: EdgeInsets.all(Sizes.height4),
                        color: ColorPalettes.goldDark,
                        textAlign: TextAlign.center,
                      ),
                      MyText(
                        text: Strings.debit,
                        fontWeight: FontWeight.bold,
                        fontSize: Sizes.sp14,
                        margin: EdgeInsets.all(Sizes.height4),
                        color: ColorPalettes.goldDark,
                        textAlign: TextAlign.center,
                      ),
                      MyText(
                        text: '',
                        fontWeight: FontWeight.bold,
                        fontSize: Sizes.sp14,
                        margin: EdgeInsets.all(Sizes.height4),
                        color: ColorPalettes.goldDark,
                        textAlign: TextAlign.center,
                      ),
                      MyText(
                        text: '',
                        fontWeight: FontWeight.bold,
                        fontSize: Sizes.sp14,
                        margin: EdgeInsets.all(Sizes.height4),
                        color: ColorPalettes.goldDark,
                        textAlign: TextAlign.center,
                      ),
                      MyText(
                        text: '',
                        fontWeight: FontWeight.bold,
                        fontSize: Sizes.sp14,
                        margin: EdgeInsets.all(Sizes.height4),
                        color: ColorPalettes.goldDark,
                        textAlign: TextAlign.center,
                      ),
                      MyText(
                        text: '',
                        fontWeight: FontWeight.bold,
                        fontSize: Sizes.sp14,
                        margin: EdgeInsets.all(Sizes.height4),
                        color: ColorPalettes.goldDark,
                        textAlign: TextAlign.center,
                      ),
                      MyText(
                        text: Strings.kredit,
                        fontWeight: FontWeight.bold,
                        fontSize: Sizes.sp14,
                        margin: EdgeInsets.all(Sizes.height4),
                        color: ColorPalettes.goldDark,
                        textAlign: TextAlign.center,
                      ),
                      MyText(
                        text: '',
                        fontWeight: FontWeight.bold,
                        fontSize: Sizes.sp14,
                        margin: EdgeInsets.all(Sizes.height4),
                        color: ColorPalettes.goldDark,
                        textAlign: TextAlign.center,
                      ),
                      MyText(
                        text: '',
                        fontWeight: FontWeight.bold,
                        fontSize: Sizes.sp14,
                        margin: EdgeInsets.all(Sizes.height4),
                        color: ColorPalettes.goldDark,
                        textAlign: TextAlign.center,
                      ),
                      MyText(
                        text: '',
                        fontWeight: FontWeight.bold,
                        fontSize: Sizes.sp14,
                        margin: EdgeInsets.all(Sizes.height4),
                        color: ColorPalettes.goldDark,
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  // subtitle
                  TableRow(
                    decoration: BoxDecoration(color: ColorPalettes.bgGoldOp10),
                    children: [
                      MyText(
                        text: '',
                        fontSize: Sizes.sp14,
                        margin: EdgeInsets.all(Sizes.height4),
                        color: ColorPalettes.goldDark,
                        textAlign: TextAlign.center,
                      ),
                      MyText(
                        text: '',
                        fontSize: Sizes.sp14,
                        margin: EdgeInsets.all(Sizes.height4),
                        color: ColorPalettes.goldDark,
                        textAlign: TextAlign.center,
                      ),
                      MyText(
                        text: '',
                        fontSize: Sizes.sp14,
                        margin: EdgeInsets.all(Sizes.height4),
                        color: ColorPalettes.goldDark,
                        textAlign: TextAlign.center,
                      ),
                      MyText(
                        text: Strings.qty,
                        fontSize: Sizes.sp14,
                        margin: EdgeInsets.all(Sizes.height4),
                        color: ColorPalettes.goldDark,
                        textAlign: TextAlign.center,
                      ),
                      MyText(
                        text: Strings.hargaSatuan,
                        fontSize: Sizes.sp14,
                        margin: EdgeInsets.all(Sizes.height4),
                        color: ColorPalettes.goldDark,
                        textAlign: TextAlign.center,
                      ),
                      MyText(
                        text: Strings.bebanLainLain,
                        fontSize: Sizes.sp14,
                        margin: EdgeInsets.all(Sizes.height4),
                        color: ColorPalettes.goldDark,
                        textAlign: TextAlign.center,
                      ),
                      MyText(
                        text: Strings.bebanAtk,
                        fontSize: Sizes.sp14,
                        margin: EdgeInsets.all(Sizes.height4),
                        color: ColorPalettes.goldDark,
                        textAlign: TextAlign.center,
                      ),
                      MyText(
                        text: Strings.bebanKendaraan,
                        fontSize: Sizes.sp14,
                        margin: EdgeInsets.all(Sizes.height4),
                        color: ColorPalettes.goldDark,
                        textAlign: TextAlign.center,
                      ),
                      MyText(
                        text: Strings.kasbonKaryawan,
                        fontSize: Sizes.sp14,
                        margin: EdgeInsets.all(Sizes.height4),
                        color: ColorPalettes.goldDark,
                        textAlign: TextAlign.center,
                      ),
                      MyText(
                        text: Strings.hutangUsaha,
                        fontSize: Sizes.sp14,
                        margin: EdgeInsets.all(Sizes.height4),
                        color: ColorPalettes.goldDark,
                        textAlign: TextAlign.center,
                      ),
                      MyText(
                        text: Strings.biayaTambahan,
                        fontSize: Sizes.sp14,
                        margin: EdgeInsets.all(Sizes.height4),
                        color: ColorPalettes.goldDark,
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  // value
                  ..._buildValueTables(data.kas!),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  List<TableRow> _buildValueTables(List<KasResponse> kas) {
    final _rowItems = List<TableRow>.empty(growable: true);
    kas.sort((a, b) => a.date!.compareTo(b.date!));
    for (KasResponse kas in kas) {
      kas.kasTransactions?.forEach((kasTransaction) {
        final _index = kas.kasTransactions?.indexOf(kasTransaction);
        _rowItems.add(
          TableRow(
            children: [
              MyText(
                text: _index == 0
                    ? DateUtil.toFormattedDate(kas.date, datePattern: 'dd MMM')
                    : '',
                fontSize: Sizes.sp14,
                margin: EdgeInsets.all(Sizes.height4),
                color: ColorPalettes.goldDark,
                textAlign: TextAlign.center,
              ),
              MyText(
                text: kasTransaction.description ?? '-',
                fontSize: Sizes.sp14,
                margin: EdgeInsets.all(Sizes.height4),
                color: ColorPalettes.goldDark,
                // textAlign: TextAlign.center,
              ),
              MyText(
                text: kasTransaction.debit.toIdrOrDash(),
                fontSize: Sizes.sp14,
                margin: EdgeInsets.all(Sizes.height4),
                color: ColorPalettes.goldDark,
                textAlign: TextAlign.center,
                fontWeight: FontWeight.bold,
              ),
              MyText(
                text: kasTransaction.quantity.orDash(),
                fontSize: Sizes.sp14,
                margin: EdgeInsets.all(Sizes.height4),
                color: ColorPalettes.goldDark,
                textAlign: TextAlign.center,
              ),
              MyText(
                text: kasTransaction.unitPrice.toIdrOrDash(),
                fontSize: Sizes.sp14,
                margin: EdgeInsets.all(Sizes.height4),
                color: ColorPalettes.goldDark,
                textAlign: TextAlign.center,
              ),
              MyText(
                text: kasTransaction.anotherLoad.toIdrOrDash(),
                fontSize: Sizes.sp14,
                margin: EdgeInsets.all(Sizes.height4),
                color: ColorPalettes.goldDark,
                textAlign: TextAlign.center,
              ),
              MyText(
                text: kasTransaction.atkLoad.toIdrOrDash(),
                fontSize: Sizes.sp14,
                margin: EdgeInsets.all(Sizes.height4),
                color: ColorPalettes.goldDark,
                textAlign: TextAlign.center,
              ),
              MyText(
                text: kasTransaction.vehicleLoad.toIdrOrDash(),
                fontSize: Sizes.sp14,
                margin: EdgeInsets.all(Sizes.height4),
                color: ColorPalettes.goldDark,
                textAlign: TextAlign.center,
              ),
              MyText(
                text: kasTransaction.employeeKasbon.toIdrOrDash(),
                fontSize: Sizes.sp14,
                margin: EdgeInsets.all(Sizes.height4),
                color: ColorPalettes.goldDark,
                textAlign: TextAlign.center,
              ),
              MyText(
                text: kasTransaction.accountPayable.toIdrOrDash(),
                fontSize: Sizes.sp14,
                margin: EdgeInsets.all(Sizes.height4),
                color: ColorPalettes.goldDark,
                textAlign: TextAlign.center,
              ),
              MyText(
                text: kasTransaction.additionalCost.toIdrOrDash(),
                fontSize: Sizes.sp14,
                margin: EdgeInsets.all(Sizes.height4),
                color: ColorPalettes.goldDark,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        );
      });
    }

    return _rowItems;
  }

  _onPressedAdd() {
    GetUtil.showDialog(const AddPengeluaranBaruDialog());
  }
}
