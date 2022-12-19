import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/constants/strings.dart';
import '../../../../core/extensions/snackbar_ext.dart';
import '../../../../core/style/color_palettes.dart';
import '../../../../core/style/sizes.dart';
import '../../../../core/unions/failure.dart';
import '../../../../core/utils/get_util.dart';
import '../../../../core/widgets/actual_ending_cash_dialog.dart';
import '../../../../core/widgets/loading_dialog.dart';
import '../../../../core/widgets/primary_button.dart';
import '../penjualan/detail/footer/print_args.dart';
import '../penjualan/detail/footer/print_dialog.dart';
import 'closing_report_confirmation_dialog/closing_report_confirmation_dialog.dart';
import 'cubit/transaction_cubit.dart';

class ClosingButton extends StatelessWidget {
  const ClosingButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<TransactionCubit, TransactionState>(
      listenWhen: (previous, current) => previous.closingResult != current.closingResult,
      listener: (context, state) {
        state.closingResult.when(
          initial: () => GetUtil.showDialog(
            ActualEndingCashDialog(),
            barrierDismissible: true,
          ),
          loading: () => GetUtil.showDialog(
            const LoadingDialog(),
            barrierDismissible: false,
          ),
          success: (data) async {
            GetUtil.dismissDialog();
            final _result = await GetUtil.showDialog(
              PrintDialog(
                args: PrintArgs(
                  printData: null,
                  closingResponse: data,
                ),
              ),
            );
            if (_result == true) {
              await GetUtil.showDialog(const ClosingReportConfirmationDialog());
            }
          },
          error: (failure) {
            GetUtil.dismissDialog();
            context.showErrorSnackbar(Failure.getErrorMessage(failure));
          },
        );
      },
      child: Opacity(
        opacity: 0.8,
        child: PrimaryButton(
          text: Strings.close,
          color: ColorPalettes.goldDark2,
          width: Sizes.width301,
          height: Sizes.height82,
          margin: EdgeInsets.only(
            top: Sizes.height57,
            bottom: Sizes.height41,
            right: Sizes.width57,
          ),
          onPressed: _onPressClose,
        ),
      ),
    );
  }

  _onPressClose() async {
    final _result = await GetUtil.showDialog(ActualEndingCashDialog(), barrierDismissible: false);
    if (_result != null) {
      await GetUtil.context.read<TransactionCubit>().closing(int.parse(_result));
    }
  }
}
