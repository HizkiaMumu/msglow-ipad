import 'package:esc_pos_bluetooth/esc_pos_bluetooth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../core/style/sizes.dart';
import '../../../../../../core/utils/get_util.dart';
import '../../../../../../core/widgets/my_text.dart';
import '../../../../cubit/printer/printer_cubit.dart';

class PrinterListItem extends StatelessWidget {
  final PrinterBluetooth printerBluetooth;

  const PrinterListItem({
    Key? key,
    required this.printerBluetooth,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        Icons.print,
        size: Sizes.height40,
      ),
      title: MyText(
        text: printerBluetooth.name ?? '-',
        fontSize: Sizes.sp20,
      ),
      subtitle: MyText(
        text: printerBluetooth.address ?? '-',
        fontSize: Sizes.sp20,
      ),
      dense: true,
      trailing: context.select((PrinterCubit value) =>
              value.state.selectedPrinter == printerBluetooth)
          ? Icon(
              Icons.check,
              color: Colors.green,
              size: Sizes.height30,
            )
          : null,
      onTap: () => _onTapPrinterItem(printerBluetooth),
    );
  }

  _onTapPrinterItem(PrinterBluetooth printer) {
    GetUtil.context.read<PrinterCubit>().changePrinter(printer);
  }
}
