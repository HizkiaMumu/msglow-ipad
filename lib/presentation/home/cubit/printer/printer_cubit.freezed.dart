// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'printer_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PrinterStateTearOff {
  const _$PrinterStateTearOff();

  _PrinterState call(
      {required ResultState<PosPrintResult> printResult,
      required Stream<int?> bluetootState,
      required Stream<List<PrinterBluetooth>> scanResults,
      required PrinterBluetooth? selectedPrinter,
      required Stream<bool> isScanningStream,
      required bool shouldShowChoosePrinterMessage,
      required ResultState<bool> isPrinterConnected,
      required bool isScanning}) {
    return _PrinterState(
      printResult: printResult,
      bluetootState: bluetootState,
      scanResults: scanResults,
      selectedPrinter: selectedPrinter,
      isScanningStream: isScanningStream,
      shouldShowChoosePrinterMessage: shouldShowChoosePrinterMessage,
      isPrinterConnected: isPrinterConnected,
      isScanning: isScanning,
    );
  }
}

/// @nodoc
const $PrinterState = _$PrinterStateTearOff();

/// @nodoc
mixin _$PrinterState {
  ResultState<PosPrintResult> get printResult =>
      throw _privateConstructorUsedError;
  Stream<int?> get bluetootState => throw _privateConstructorUsedError;
  Stream<List<PrinterBluetooth>> get scanResults =>
      throw _privateConstructorUsedError;
  PrinterBluetooth? get selectedPrinter => throw _privateConstructorUsedError;
  Stream<bool> get isScanningStream => throw _privateConstructorUsedError;
  bool get shouldShowChoosePrinterMessage => throw _privateConstructorUsedError;
  ResultState<bool> get isPrinterConnected =>
      throw _privateConstructorUsedError;
  bool get isScanning => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PrinterStateCopyWith<PrinterState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PrinterStateCopyWith<$Res> {
  factory $PrinterStateCopyWith(
          PrinterState value, $Res Function(PrinterState) then) =
      _$PrinterStateCopyWithImpl<$Res>;
  $Res call(
      {ResultState<PosPrintResult> printResult,
      Stream<int?> bluetootState,
      Stream<List<PrinterBluetooth>> scanResults,
      PrinterBluetooth? selectedPrinter,
      Stream<bool> isScanningStream,
      bool shouldShowChoosePrinterMessage,
      ResultState<bool> isPrinterConnected,
      bool isScanning});

  $ResultStateCopyWith<PosPrintResult, $Res> get printResult;
  $ResultStateCopyWith<bool, $Res> get isPrinterConnected;
}

/// @nodoc
class _$PrinterStateCopyWithImpl<$Res> implements $PrinterStateCopyWith<$Res> {
  _$PrinterStateCopyWithImpl(this._value, this._then);

  final PrinterState _value;
  // ignore: unused_field
  final $Res Function(PrinterState) _then;

  @override
  $Res call({
    Object? printResult = freezed,
    Object? bluetootState = freezed,
    Object? scanResults = freezed,
    Object? selectedPrinter = freezed,
    Object? isScanningStream = freezed,
    Object? shouldShowChoosePrinterMessage = freezed,
    Object? isPrinterConnected = freezed,
    Object? isScanning = freezed,
  }) {
    return _then(_value.copyWith(
      printResult: printResult == freezed
          ? _value.printResult
          : printResult // ignore: cast_nullable_to_non_nullable
              as ResultState<PosPrintResult>,
      bluetootState: bluetootState == freezed
          ? _value.bluetootState
          : bluetootState // ignore: cast_nullable_to_non_nullable
              as Stream<int?>,
      scanResults: scanResults == freezed
          ? _value.scanResults
          : scanResults // ignore: cast_nullable_to_non_nullable
              as Stream<List<PrinterBluetooth>>,
      selectedPrinter: selectedPrinter == freezed
          ? _value.selectedPrinter
          : selectedPrinter // ignore: cast_nullable_to_non_nullable
              as PrinterBluetooth?,
      isScanningStream: isScanningStream == freezed
          ? _value.isScanningStream
          : isScanningStream // ignore: cast_nullable_to_non_nullable
              as Stream<bool>,
      shouldShowChoosePrinterMessage: shouldShowChoosePrinterMessage == freezed
          ? _value.shouldShowChoosePrinterMessage
          : shouldShowChoosePrinterMessage // ignore: cast_nullable_to_non_nullable
              as bool,
      isPrinterConnected: isPrinterConnected == freezed
          ? _value.isPrinterConnected
          : isPrinterConnected // ignore: cast_nullable_to_non_nullable
              as ResultState<bool>,
      isScanning: isScanning == freezed
          ? _value.isScanning
          : isScanning // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  @override
  $ResultStateCopyWith<PosPrintResult, $Res> get printResult {
    return $ResultStateCopyWith<PosPrintResult, $Res>(_value.printResult,
        (value) {
      return _then(_value.copyWith(printResult: value));
    });
  }

  @override
  $ResultStateCopyWith<bool, $Res> get isPrinterConnected {
    return $ResultStateCopyWith<bool, $Res>(_value.isPrinterConnected, (value) {
      return _then(_value.copyWith(isPrinterConnected: value));
    });
  }
}

/// @nodoc
abstract class _$PrinterStateCopyWith<$Res>
    implements $PrinterStateCopyWith<$Res> {
  factory _$PrinterStateCopyWith(
          _PrinterState value, $Res Function(_PrinterState) then) =
      __$PrinterStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {ResultState<PosPrintResult> printResult,
      Stream<int?> bluetootState,
      Stream<List<PrinterBluetooth>> scanResults,
      PrinterBluetooth? selectedPrinter,
      Stream<bool> isScanningStream,
      bool shouldShowChoosePrinterMessage,
      ResultState<bool> isPrinterConnected,
      bool isScanning});

  @override
  $ResultStateCopyWith<PosPrintResult, $Res> get printResult;
  @override
  $ResultStateCopyWith<bool, $Res> get isPrinterConnected;
}

/// @nodoc
class __$PrinterStateCopyWithImpl<$Res> extends _$PrinterStateCopyWithImpl<$Res>
    implements _$PrinterStateCopyWith<$Res> {
  __$PrinterStateCopyWithImpl(
      _PrinterState _value, $Res Function(_PrinterState) _then)
      : super(_value, (v) => _then(v as _PrinterState));

  @override
  _PrinterState get _value => super._value as _PrinterState;

  @override
  $Res call({
    Object? printResult = freezed,
    Object? bluetootState = freezed,
    Object? scanResults = freezed,
    Object? selectedPrinter = freezed,
    Object? isScanningStream = freezed,
    Object? shouldShowChoosePrinterMessage = freezed,
    Object? isPrinterConnected = freezed,
    Object? isScanning = freezed,
  }) {
    return _then(_PrinterState(
      printResult: printResult == freezed
          ? _value.printResult
          : printResult // ignore: cast_nullable_to_non_nullable
              as ResultState<PosPrintResult>,
      bluetootState: bluetootState == freezed
          ? _value.bluetootState
          : bluetootState // ignore: cast_nullable_to_non_nullable
              as Stream<int?>,
      scanResults: scanResults == freezed
          ? _value.scanResults
          : scanResults // ignore: cast_nullable_to_non_nullable
              as Stream<List<PrinterBluetooth>>,
      selectedPrinter: selectedPrinter == freezed
          ? _value.selectedPrinter
          : selectedPrinter // ignore: cast_nullable_to_non_nullable
              as PrinterBluetooth?,
      isScanningStream: isScanningStream == freezed
          ? _value.isScanningStream
          : isScanningStream // ignore: cast_nullable_to_non_nullable
              as Stream<bool>,
      shouldShowChoosePrinterMessage: shouldShowChoosePrinterMessage == freezed
          ? _value.shouldShowChoosePrinterMessage
          : shouldShowChoosePrinterMessage // ignore: cast_nullable_to_non_nullable
              as bool,
      isPrinterConnected: isPrinterConnected == freezed
          ? _value.isPrinterConnected
          : isPrinterConnected // ignore: cast_nullable_to_non_nullable
              as ResultState<bool>,
      isScanning: isScanning == freezed
          ? _value.isScanning
          : isScanning // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_PrinterState implements _PrinterState {
  const _$_PrinterState(
      {required this.printResult,
      required this.bluetootState,
      required this.scanResults,
      required this.selectedPrinter,
      required this.isScanningStream,
      required this.shouldShowChoosePrinterMessage,
      required this.isPrinterConnected,
      required this.isScanning});

  @override
  final ResultState<PosPrintResult> printResult;
  @override
  final Stream<int?> bluetootState;
  @override
  final Stream<List<PrinterBluetooth>> scanResults;
  @override
  final PrinterBluetooth? selectedPrinter;
  @override
  final Stream<bool> isScanningStream;
  @override
  final bool shouldShowChoosePrinterMessage;
  @override
  final ResultState<bool> isPrinterConnected;
  @override
  final bool isScanning;

  @override
  String toString() {
    return 'PrinterState(printResult: $printResult, bluetootState: $bluetootState, scanResults: $scanResults, selectedPrinter: $selectedPrinter, isScanningStream: $isScanningStream, shouldShowChoosePrinterMessage: $shouldShowChoosePrinterMessage, isPrinterConnected: $isPrinterConnected, isScanning: $isScanning)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PrinterState &&
            const DeepCollectionEquality()
                .equals(other.printResult, printResult) &&
            const DeepCollectionEquality()
                .equals(other.bluetootState, bluetootState) &&
            const DeepCollectionEquality()
                .equals(other.scanResults, scanResults) &&
            const DeepCollectionEquality()
                .equals(other.selectedPrinter, selectedPrinter) &&
            const DeepCollectionEquality()
                .equals(other.isScanningStream, isScanningStream) &&
            const DeepCollectionEquality().equals(
                other.shouldShowChoosePrinterMessage,
                shouldShowChoosePrinterMessage) &&
            const DeepCollectionEquality()
                .equals(other.isPrinterConnected, isPrinterConnected) &&
            const DeepCollectionEquality()
                .equals(other.isScanning, isScanning));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(printResult),
      const DeepCollectionEquality().hash(bluetootState),
      const DeepCollectionEquality().hash(scanResults),
      const DeepCollectionEquality().hash(selectedPrinter),
      const DeepCollectionEquality().hash(isScanningStream),
      const DeepCollectionEquality().hash(shouldShowChoosePrinterMessage),
      const DeepCollectionEquality().hash(isPrinterConnected),
      const DeepCollectionEquality().hash(isScanning));

  @JsonKey(ignore: true)
  @override
  _$PrinterStateCopyWith<_PrinterState> get copyWith =>
      __$PrinterStateCopyWithImpl<_PrinterState>(this, _$identity);
}

abstract class _PrinterState implements PrinterState {
  const factory _PrinterState(
      {required ResultState<PosPrintResult> printResult,
      required Stream<int?> bluetootState,
      required Stream<List<PrinterBluetooth>> scanResults,
      required PrinterBluetooth? selectedPrinter,
      required Stream<bool> isScanningStream,
      required bool shouldShowChoosePrinterMessage,
      required ResultState<bool> isPrinterConnected,
      required bool isScanning}) = _$_PrinterState;

  @override
  ResultState<PosPrintResult> get printResult;
  @override
  Stream<int?> get bluetootState;
  @override
  Stream<List<PrinterBluetooth>> get scanResults;
  @override
  PrinterBluetooth? get selectedPrinter;
  @override
  Stream<bool> get isScanningStream;
  @override
  bool get shouldShowChoosePrinterMessage;
  @override
  ResultState<bool> get isPrinterConnected;
  @override
  bool get isScanning;
  @override
  @JsonKey(ignore: true)
  _$PrinterStateCopyWith<_PrinterState> get copyWith =>
      throw _privateConstructorUsedError;
}
