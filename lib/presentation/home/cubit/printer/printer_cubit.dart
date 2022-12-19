import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:esc_pos_bluetooth/esc_pos_bluetooth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/libraries/thermal_printer_manager.dart';
import '../../../../core/unions/failure.dart';
import '../../../../core/unions/result_state.dart';
import '../../../../data/remote/response/transaction/closing_response.dart';
import '../../../../domain/entities/print/print_data.dart';
import '../../../../domain/usecases/get_user_usecase.dart';
import '../../../../domain/usecases/update_order_print_status_usecase.dart';

part 'printer_cubit.freezed.dart';
part 'printer_state.dart';

@injectable
class PrinterCubit extends Cubit<PrinterState> {
  final ThermalPrinterManager _thermalPrinterManager;
  final GetUserUseCase _getUserUseCase;
  final UpdateOrderPrintStatusUsecase _updateOrderPrintStatusUsecase;

  PrinterCubit(this._thermalPrinterManager, this._getUserUseCase, this._updateOrderPrintStatusUsecase)
      : super(PrinterState.initial());

  getBluetoothState() {
    emit(state.copyWith(bluetootState: _thermalPrinterManager.bluetoothState));
  }

  getScanResults() {
    emit(state.copyWith(scanResults: _thermalPrinterManager.scanResults));
  }

  getScanningStream() {
    emit(state.copyWith(isScanningStream: _thermalPrinterManager.isScanningStream));
  }

  changePrinter(PrinterBluetooth printer) {
    emit(state.copyWith(
      selectedPrinter: printer,
      shouldShowChoosePrinterMessage: false,
    ));
  }

  checkConnectionToPrinter() async {
    emit(state.copyWith(isPrinterConnected: const ResultState.loading()));

    try {
      final _result = await _thermalPrinterManager.isConnected();
      emit(state.copyWith(isPrinterConnected: ResultState.success(data: _result)));
    } on Exception {
      emit(state.copyWith(isPrinterConnected: const ResultState.success(data: false)));
    }
  }

  startScanPrinter() {
    emit(state.copyWith(selectedPrinter: null, shouldShowChoosePrinterMessage: false, isScanning: true));

    getBluetoothState();
    getScanResults();
    getScanningStream();
    _thermalPrinterManager.startScanPrinter(timeout: const Duration(seconds: 2));
  }

  startPrint({
    PrintData? printData,
    ClosingResponse? closingResponse,
  }) async {
    if (state.selectedPrinter == null) {
      emit(state.copyWith(shouldShowChoosePrinterMessage: true));
      return;
    }

    emit(state.copyWith(printResult: const ResultState.loading()));

    try {
      final _result = await _thermalPrinterManager.startPrint(
        printer: state.selectedPrinter!,
        printData: printData,
        closingResponse: closingResponse,
      );

      if (_result.value == PosPrintResult.success.value) {
        emit(state.copyWith(printResult: ResultState.success(data: _result), isScanning: false));

        return;
      }

      emit(state.copyWith(
          printResult: ResultState.error(failure: Failure.defaultError(_result.msg)), isScanning: false));
    } catch (e) {
      emit(state.copyWith(printResult: const ResultState.error(failure: Failure.unexpectedError()), isScanning: false));
    }
  }

  onDispose() {
    _thermalPrinterManager.stopScanPrinter();
    _thermalPrinterManager.stopScanBluetooth();
    emit(state.copyWith(shouldShowChoosePrinterMessage: false));
  }
}
