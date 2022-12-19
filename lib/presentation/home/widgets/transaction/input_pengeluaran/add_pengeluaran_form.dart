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
import '../../../../../core/extensions/snackbar_ext.dart';
import '../../../../../core/unions/failure.dart';
import '../../../../../core/utils/date_util.dart';
import '../../../../../core/utils/utils.dart';
import '../../../../../core/widgets/loading_dialog.dart';
import '../../../../../core/widgets/my_date_form_field.dart';
import '../cubit/transaction_cubit.dart';

class AddPemasukanPengeluaranForm extends StatefulWidget {
  static const modePemasukan = 1;
  static const modePengeluaran = 2;
  final int mode;

  const AddPemasukanPengeluaranForm({Key? key, this.mode = modePemasukan})
      : super(key: key);

  @override
  State<AddPemasukanPengeluaranForm> createState() =>
      _AddPemasukanPengeluaranFormState();
}

class _AddPemasukanPengeluaranFormState
    extends State<AddPemasukanPengeluaranForm> {
  final _formKey = GlobalKey<FormBuilderState>();

  @override
  void dispose() {
    _formKey.currentState?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<TransactionCubit, TransactionState>(
      listenWhen: (previous, current) =>
          previous.addInOutcomeResult != current.addInOutcomeResult,
      listener: (context, state) {
        state.addInOutcomeResult.when(
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
        child: FormBuilder(
          key: _formKey,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              MyDateFormField(
                label: Strings.tanggal,
                name: Strings.tanggal,
                direction: Axis.horizontal,
                textFieldWidth: Sizes.width695,
              ),
              MyTextFormField(
                label: Strings.judul,
                name: Strings.judul,
                direction: Axis.horizontal,
                textFieldWidth: Sizes.width695,
                padding: EdgeInsets.only(
                  top: Sizes.height37,
                ),
              ),
              MyTextFormField(
                label: Strings.deskripsi,
                name: Strings.deskripsi,
                direction: Axis.horizontal,
                textFieldWidth: Sizes.width695,
                padding: EdgeInsets.only(
                  top: Sizes.height37,
                ),
              ),
              MyTextFormField(
                label: Strings.nominal,
                name: Strings.nominal,
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
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  PrimaryButton(
                    margin: EdgeInsets.only(
                      top: Sizes.height79,
                    ),
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
      ),
    );
  }

  _onPressAdd(BuildContext context) {
    if (_formKey.currentState?.saveAndValidate() ?? false) {
      context.read<TransactionCubit>().addIntOutcome(
        mode: widget.mode,
            date: DateUtil.dateTimeToFormattedDate(
              _formKey.currentState!.value[Strings.tanggal],
              datePattern: 'yyyy-MM-dd',
            ),
            title: _formKey.currentState!.value[Strings.judul],
            description: _formKey.currentState!.value[Strings.deskripsi],
            amount:
                removeIdrFormat(_formKey.currentState!.value[Strings.nominal]),
          );
    }
  }
}
