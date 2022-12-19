import 'dart:io';

import 'package:esc_pos_bluetooth/esc_pos_bluetooth.dart';
import 'package:flutter/material.dart' hide Image;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_kasir/core/libraries/thermal_printer_util.dart';

import '../../../../../../core/constants/strings.dart';
import '../../../../../../core/style/color_palettes.dart';
import '../../../../../../core/style/sizes.dart';
import '../../../../../../core/unions/result_state.dart';
import '../../../../../../core/utils/get_util.dart';
import '../../../../../../core/widgets/my_text.dart';
import '../../../../../../core/widgets/primary_button.dart';
import '../../../../../../core/widgets/secondary_button.dart';
import '../../../../cubit/printer/printer_cubit.dart';
import 'print_args.dart';
import 'printer_list_item.dart';

class PrintContent extends StatefulWidget {
  final PrintArgs args;

  const PrintContent({
    Key? key,
    required this.args,
  }) : super(key: key);

  @override
  _PrintContent createState() => _PrintContent();
}

class _PrintContent extends State<PrintContent> {
  @override
  void initState() {
    super.initState();

    // WidgetsBinding.instance?.addPostFrameCallback((timeStamp) {
    Future.delayed(const Duration(microseconds: 300), _startScanPrinter);
    // });
  }

  @override
  Widget build(BuildContext context) {
    return Platform.isAndroid
        ? StreamBuilder<int?>(
            initialData: ThermalPrinterUtil.bluetoothNotActiveCode,
            stream: context.read<PrinterCubit>().state.bluetootState,
            builder: (c, s) {
              if (!ThermalPrinterUtil.isBluetoothActive(s.data)) {
                return Center(
                  child: MyText(
                    text: Strings.msgTurnOnBluetooth,
                    fontSize: Sizes.sp24,
                    fontWeight: FontWeight.w500,
                  ),
                );
              }

              return _buildPrinterList();
            })

        /*BlocSelector<PrinterCubit, PrinterState, Stream<int?>>(
            selector: (state) {
              return state.bluetootState;
            },
            builder: (context, state) {
              return StreamBuilder<int?>(
                initialData: ThermalPrinterUtil.bluetoothNotActiveCode,
                stream: state.asBroadcastStream(),
                builder: (context, snapshot) {
                  if (!ThermalPrinterUtil.isBluetoothActive(snapshot.data)) {
                    return Center(
                      child: MyText(
                        text: Strings.msgTurnOnBluetooth,
                        fontSize: Sizes.sp24,
                        fontWeight: FontWeight.w500,
                      ),
                    );
                  }

                  return _buildPrinterList();
                },
              );
            },
          )*/
        : _buildPrinterList();
  }

  _buildPrinterList() {
    return BlocSelector<PrinterCubit, PrinterState,
        Stream<List<PrinterBluetooth>>>(
      selector: (state) {
        return state.scanResults;
      },
      builder: (context, state) {
        return StreamBuilder<List<PrinterBluetooth>>(
          initialData: List.empty(),
          stream: state,
          builder: (context, snapshot) {
            if (snapshot.requireData.isEmpty) {
              if (context.read<PrinterCubit>().state.isScanning) {
                return const Center(child: CircularProgressIndicator());
              }
              return InkWell(
                onTap: () {
                  _startScanPrinter();
                },
                child: Center(
                  child: MyText(
                    text: 'Klik untuk mefresh printer',
                    fontSize: Sizes.sp24,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              );
            }
            return Column(
              children: [
                MyText(
                  text: Strings.descChoosePrinter,
                  fontSize: Sizes.sp22,
                  fontWeight: FontWeight.w500,
                  textAlign: TextAlign.start,
                ),
                SizedBox(
                  height: Sizes.height16,
                ),
                ...snapshot.requireData.map(
                  (e) {
                    return PrinterListItem(printerBluetooth: e);
                  },
                ).toList(),
                SizedBox(
                  height: Sizes.height16,
                ),
                BlocSelector<PrinterCubit, PrinterState, Stream<bool>>(
                  selector: (state) {
                    return state.isScanningStream;
                  },
                  builder: (context, state) {
                    return StreamBuilder<bool>(
                        initialData: true,
                        stream: state,
                        builder: (context, snapshot) {
                          if (snapshot.requireData) {
                            return const CircularProgressIndicator();
                          }
                          return Column(
                            children: [
                              Visibility(
                                visible: context.select((PrinterCubit value) =>
                                    value.state.shouldShowChoosePrinterMessage),
                                child: MyText(
                                  text: Strings.msgChoosePrinterFirst,
                                  color: ColorPalettes.gold,
                                  margin: EdgeInsets.only(
                                    bottom: Sizes.height8,
                                  ),
                                  fontSize: Sizes.sp18,
                                ),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  SecondaryButton(
                                    width: Sizes.width170,
                                    height: Sizes.height56,
                                    text: Strings.refresh,
                                    onPressed: _onPressScanPrinter,
                                  ),
                                  PrimaryButton(
                                    width: Sizes.width170,
                                    height: Sizes.height56,
                                    text: Strings.cetak,
                                    onPressed: () => _onPressPrint(),
                                  ),
                                ],
                              ),
                            ],
                          );
                        });
                  },
                )
              ],
            );
          },
        );
      },
    );
  }

  _onPressScanPrinter() {
    _startScanPrinter();
  }

  void _onPressPrint() {
    final cubit = context.read<PrinterCubit>();
    if (cubit.state.selectedPrinter != null) {
      cubit.emit(cubit.state
          .copyWith(isPrinterConnected: const ResultState.success(data: true)));
      return;
    }
    cubit.startPrint(
      printData: widget.args.printData,
      closingResponse: widget.args.closingResponse,
    );
  }

  _startScanPrinter() {
    context.read<PrinterCubit>().startScanPrinter();
  }

  @override
  void dispose() {
    GetUtil.context.read<PrinterCubit>().onDispose();
    super.dispose();
  }
}
