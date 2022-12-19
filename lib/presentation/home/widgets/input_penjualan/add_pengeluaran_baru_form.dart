import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

import '../../../../../../core/constants/strings.dart';
import '../../../../../../core/style/sizes.dart';
import '../../../../../../core/utils/currency_formatter.dart';
import '../../../../../../core/utils/get_util.dart';
import '../../../../../../core/widgets/my_text_form_field.dart';
import '../../../../../../core/widgets/primary_button.dart';
import '../../../../core/extensions/snackbar_ext.dart';
import '../../../../core/unions/failure.dart';
import '../../../../core/widgets/loading_dialog.dart';
import '../../../../core/widgets/my_date_form_field.dart';
import 'cubit/input_penjualan_cubit.dart';

class AddPengeluaranBaruForm extends StatefulWidget {
  const AddPengeluaranBaruForm({Key? key}) : super(key: key);

  @override
  State<AddPengeluaranBaruForm> createState() => _AddPengeluaranBaruFormState();
}

class _AddPengeluaranBaruFormState extends State<AddPengeluaranBaruForm> {
  final _formKey = GlobalKey<FormBuilderState>();

  @override
  void dispose() {
    _formKey.currentState?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<InputPenjualanCubit, InputPenjualanState>(
      listenWhen: (previous, current) =>
          previous.addPengeluaranBaruResult != current.addPengeluaranBaruResult,
      listener: (context, state) {
        state.addPengeluaranBaruResult.when(
          initial: () => null,
          loading: () {
            GetUtil.showDialog(
              const LoadingDialog(),
            );
          },
          success: (data) {
            GetUtil.dismissDialog();
            GetUtil.dismissDialog();
            context.showSuccessSnackbar(
                data.message ?? 'Berhasil menambahkan pengeluaran.');
          },
          error: (failure) {
            GetUtil.dismissDialog();
            GetUtil.dismissDialog();
            context.showErrorSnackbar(Failure.getErrorMessage(failure));
          },
        );
      },
      child: Padding(
        padding: EdgeInsets.only(
          left: Sizes.width40,
          right: Sizes.width40,
          top: Sizes.height40,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            FormBuilder(
              key: _formKey,
              child: Column(
                children: [
                  MyDateFormField(
                    label: Strings.tanggal,
                    name: Strings.tanggal,
                    direction: Axis.horizontal,
                    textFieldWidth: Sizes.width695,
                    onChanged: (value) {
                      context
                          .read<InputPenjualanCubit>()
                          .changeInputTanggal(value);
                    },
                  ),
                  MyTextFormField(
                    label: Strings.keterangan,
                    name: Strings.keterangan,
                    direction: Axis.horizontal,
                    textFieldWidth: Sizes.width695,
                    padding: EdgeInsets.only(
                      top: Sizes.height37,
                    ),
                    onChanged: (value) {
                      context
                          .read<InputPenjualanCubit>()
                          .changeInputKeterangan(value);
                    },
                  ),
                ],
              ),
            ),
            MyTextFormField(
              label: Strings.quantity,
              name: Strings.quantity,
              direction: Axis.horizontal,
              textFieldWidth: Sizes.width695,
              keyboardType: TextInputType.number,
              padding: EdgeInsets.only(
                top: Sizes.height37,
              ),
              onChanged: (value) {
                context.read<InputPenjualanCubit>().changeInputquantity(value);
              },
            ),
            MyTextFormField(
              label: Strings.hargaSatuan,
              name: Strings.hargaSatuan,
              direction: Axis.horizontal,
              textFieldWidth: Sizes.width695,
              padding: EdgeInsets.only(
                top: Sizes.height37,
              ),
              inputFormatters: [
                FilteringTextInputFormatter.digitsOnly,
                FilteringTextInputFormatter.deny(RegExp(r'^0')),
                CurrencyFormatter(),
              ],
              keyboardType: TextInputType.number,
              onChanged: (value) {
                context
                    .read<InputPenjualanCubit>()
                    .changeInputhargaSatuan(value);
              },
            ),
            MyTextFormField(
              label: Strings.bebanLainLain,
              name: Strings.bebanLainLain,
              direction: Axis.horizontal,
              textFieldWidth: Sizes.width695,
              padding: EdgeInsets.only(
                top: Sizes.height37,
              ),
              inputFormatters: [
                FilteringTextInputFormatter.digitsOnly,
                FilteringTextInputFormatter.deny(RegExp(r'^0')),
                CurrencyFormatter(),
              ],
              keyboardType: TextInputType.number,
              onChanged: (value) {
                context
                    .read<InputPenjualanCubit>()
                    .changeInputbebanLainlain(value);
              },
            ),
            MyTextFormField(
              label: Strings.bebanAtk,
              name: Strings.bebanAtk,
              direction: Axis.horizontal,
              textFieldWidth: Sizes.width695,
              padding: EdgeInsets.only(
                top: Sizes.height37,
              ),
              inputFormatters: [
                FilteringTextInputFormatter.digitsOnly,
                FilteringTextInputFormatter.deny(RegExp(r'^0')),
                CurrencyFormatter(),
              ],
              keyboardType: TextInputType.number,
              onChanged: (value) {
                context.read<InputPenjualanCubit>().changeInputbebanAtk(value);
              },
            ),
            MyTextFormField(
              label: Strings.bebanKendaraan,
              name: Strings.bebanKendaraan,
              direction: Axis.horizontal,
              textFieldWidth: Sizes.width695,
              padding: EdgeInsets.only(
                top: Sizes.height37,
              ),
              inputFormatters: [
                FilteringTextInputFormatter.digitsOnly,
                FilteringTextInputFormatter.deny(RegExp(r'^0')),
                CurrencyFormatter(),
              ],
              keyboardType: TextInputType.number,
              onChanged: (value) {
                context
                    .read<InputPenjualanCubit>()
                    .changeInputbebanKendaraan(value);
              },
            ),
            MyTextFormField(
              label: Strings.kasbonKaryawan,
              name: Strings.kasbonKaryawan,
              direction: Axis.horizontal,
              textFieldWidth: Sizes.width695,
              padding: EdgeInsets.only(
                top: Sizes.height37,
              ),
              inputFormatters: [
                FilteringTextInputFormatter.digitsOnly,
                FilteringTextInputFormatter.deny(RegExp(r'^0')),
                CurrencyFormatter(),
              ],
              keyboardType: TextInputType.number,
              onChanged: (value) {
                context
                    .read<InputPenjualanCubit>()
                    .changeInputkasbonKaryawan(value);
              },
            ),
            MyTextFormField(
              label: Strings.hutangUsaha,
              name: Strings.hutangUsaha,
              direction: Axis.horizontal,
              textFieldWidth: Sizes.width695,
              padding: EdgeInsets.only(
                top: Sizes.height37,
              ),
              inputFormatters: [
                FilteringTextInputFormatter.digitsOnly,
                FilteringTextInputFormatter.deny(RegExp(r'^0')),
                CurrencyFormatter(),
              ],
              keyboardType: TextInputType.number,
              onChanged: (value) {
                context
                    .read<InputPenjualanCubit>()
                    .changeInputhutangUsaha(value);
              },
            ),
            MyTextFormField(
              label: Strings.biayaTambahan,
              name: Strings.biayaTambahan,
              direction: Axis.horizontal,
              textFieldWidth: Sizes.width695,
              padding: EdgeInsets.only(
                top: Sizes.height37,
                bottom: Sizes.height100,
              ),
              inputFormatters: [
                FilteringTextInputFormatter.digitsOnly,
                FilteringTextInputFormatter.deny(RegExp(r'^0')),
                CurrencyFormatter(),
              ],
              keyboardType: TextInputType.number,
              onChanged: (value) {
                context
                    .read<InputPenjualanCubit>()
                    .changeInputbiayaTambahan(value);
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                // SecondaryButton(
                //   text: Strings.cancel,
                //   width: Sizes.width172,
                //   height: Sizes.height56,
                //   fontSize: Sizes.sp18,
                //   fontWeight: FontWeight.w500,
                //   margin: EdgeInsets.only(
                //     right: Sizes.width42,
                //   ),
                //   onPressed: () => _onPressCancel(context),
                // ),
                PrimaryButton(
                  text: Strings.add,
                  width: Sizes.width172,
                  height: Sizes.height56,
                  fontSize: Sizes.sp18,
                  fontWeight: FontWeight.w500,
                  onPressed: () => _onPressAdd(context),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  _onPressAdd(BuildContext context) {
    if (_formKey.currentState?.validate() ?? false) {
      context.read<InputPenjualanCubit>().addPengeluaranBaru();
    }
  }

// _onPressCancel(BuildContext context) {
//   GetUtil.dismissDialog();
// }
}
