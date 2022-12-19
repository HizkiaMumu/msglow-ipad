part of 'printer_cubit.dart';

@freezed
class PrinterState with _$PrinterState {
  const factory PrinterState(
      {required ResultState<PosPrintResult> printResult,
      required Stream<int?> bluetootState,
      required Stream<List<PrinterBluetooth>> scanResults,
      required PrinterBluetooth? selectedPrinter,
      required Stream<bool> isScanningStream,
      required bool shouldShowChoosePrinterMessage,
      required ResultState<bool> isPrinterConnected,
      required bool isScanning}) = _PrinterState;

  factory PrinterState.initial() => const PrinterState(
        printResult: ResultState.initial(),
        bluetootState: Stream.empty(),
        scanResults: Stream.empty(),
        selectedPrinter: null,
        isScanningStream: Stream.empty(),
        shouldShowChoosePrinterMessage: false,
        isPrinterConnected: ResultState.initial(),
        isScanning: false,
      );
}
