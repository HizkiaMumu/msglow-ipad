import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../core/constants/strings.dart';
import '../../../../../../core/extensions/snackbar_ext.dart';
import '../../../../../../core/style/sizes.dart';
import '../../../../../../core/unions/failure.dart';
import '../../../../../../core/utils/get_util.dart';
import '../../../../../../core/widgets/loading_dialog.dart';
import '../../../../cubit/printer/printer_cubit.dart';
import 'print_args.dart';
import 'print_confirmation.dart';
import 'print_content.dart';

const bool _kDisablePrinterDetection = bool.fromEnvironment('DISABLE_PRINT_DETECTION', defaultValue: false);

class PrintDialog extends StatelessWidget {
  final PrintArgs args;

  const PrintDialog({
    Key? key,
    required this.args,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    context.read<PrinterCubit>().checkConnectionToPrinter();

    return BlocListener<PrinterCubit, PrinterState>(
      listenWhen: (previous, current) => previous.printResult != current.printResult,
      listener: (context, state) {
        state.printResult.maybeWhen(
          success: (data) {
            context.showSuccessSnackbar(Strings.msgSuccessPrint);
            args.onSuccessPrint?.call();
            GetUtil.dismissDialog();
            GetUtil.dismissDialog(result: true);
          },
          error: (failure) {
            context.showErrorSnackbar(Failure.getErrorMessage(failure));
            GetUtil.dismissDialog();
            GetUtil.dismissDialog();
          },
          loading: () {
            GetUtil.showDialog(
              const LoadingDialog(),
              barrierDismissible: false,
            );
          },
          orElse: () => null,
        );
      },
      child: Dialog(
        elevation: 0,
        backgroundColor: Colors.transparent,
        insetPadding: EdgeInsets.symmetric(
          horizontal: Sizes.height24,
          vertical: Sizes.height24,
        ),
        child: ConstrainedBox(
          constraints: BoxConstraints(maxWidth: min(Sizes.widthFull, 350)),
          child: Container(
            padding: EdgeInsets.all(Sizes.height16),
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(Sizes.radius10),
            ),
            child: BlocBuilder<PrinterCubit, PrinterState>(
              buildWhen: (previous, current) => previous.isPrinterConnected != current.isPrinterConnected,
              builder: (context, state) {
                // TODO: Uncomment for test
                // return PrintConfirmation(
                //   args: args,
                // );

                if (_kDisablePrinterDetection) {
                  return PrintConfirmation(
                    args: args,
                  );
                }

                return state.isPrinterConnected.maybeWhen(
                  success: (isPrinterConnected) {
                    if (isPrinterConnected) {
                      return PrintConfirmation(
                        args: args,
                      );
                    }
                    return SingleChildScrollView(
                      padding: EdgeInsets.symmetric(
                        vertical: Sizes.height16,
                      ),
                      child: PrintContent(
                        args: args,
                      ),
                    );
                  },
                  orElse: () {
                    return const CircularProgressIndicator();
                  },
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
