import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../core/constants/strings.dart';
import '../../../../../../core/style/sizes.dart';
import '../../../../../../core/utils/get_util.dart';
import '../../../../../../core/widgets/my_text.dart';
import '../../../../../../core/widgets/primary_button.dart';
import '../../../../../../core/widgets/secondary_button.dart';
import '../../../../cubit/printer/printer_cubit.dart';
import 'print_args.dart';
import 'print_preview.dart';

class PrintConfirmation extends StatelessWidget {
  final PrintArgs args;

  const PrintConfirmation({
    Key? key,
    required this.args,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: MyText(
              text: Strings.printPreview,
              fontSize: Sizes.sp20,
              margin: EdgeInsets.only(
                bottom: Sizes.height40,
              ),
            ),
          ),
          PrintPreview(args: args),
          if (args.printData != null || args.closingResponse != null) SizedBox(height: Sizes.height50),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SecondaryButton(
                height: Sizes.height66,
                width: Sizes.width170,
                text: Strings.cancel,
                onPressed: _onPressCancel,
              ),
              PrimaryButton(
                height: Sizes.height66,
                width: Sizes.width170,
                text: Strings.cetak,
                onPressed: _onPressSave,
              ),
            ],
          )
        ],
      ),
    );
  }

  _onPressSave() async {
    GetUtil.context.read<PrinterCubit>().startPrint(
          printData: args.printData,
          closingResponse: args.closingResponse,
        );
  }

  _onPressCancel() {
    GetUtil.dismissDialog();
  }
}
