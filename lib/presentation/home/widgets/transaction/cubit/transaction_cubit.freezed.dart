// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'transaction_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$TransactionStateTearOff {
  const _$TransactionStateTearOff();

  _TransactionState call(
      {required ResultState<Transaction> fetchTransactionResult,
      required ResultState<BaseDomain> refundOrderResult,
      required ResultState<BaseResponse> sendClosingMailResult,
      required ResultState<String?> getClosingMailResult,
      required DateTime? filterDate,
      required int? actualEndingCash,
      required ResultState<ClosingResponse> closingResult,
      required ResultState<OutcomesResponse> fetchOutcomesResult,
      required ResultState<BaseResponse> addInOutcomeResult,
      required ResultState<BaseResponse> updateOrderPrintSatusResult,
      required ResultState<IncomeResponse> fetchIncomeListResult,
      required List<Order> orders,
      required List<User> cashierNames,
      required String selectedCashierName,
      required int tabIndex}) {
    return _TransactionState(
      fetchTransactionResult: fetchTransactionResult,
      refundOrderResult: refundOrderResult,
      sendClosingMailResult: sendClosingMailResult,
      getClosingMailResult: getClosingMailResult,
      filterDate: filterDate,
      actualEndingCash: actualEndingCash,
      closingResult: closingResult,
      fetchOutcomesResult: fetchOutcomesResult,
      addInOutcomeResult: addInOutcomeResult,
      updateOrderPrintSatusResult: updateOrderPrintSatusResult,
      fetchIncomeListResult: fetchIncomeListResult,
      orders: orders,
      cashierNames: cashierNames,
      selectedCashierName: selectedCashierName,
      tabIndex: tabIndex,
    );
  }
}

/// @nodoc
const $TransactionState = _$TransactionStateTearOff();

/// @nodoc
mixin _$TransactionState {
  ResultState<Transaction> get fetchTransactionResult =>
      throw _privateConstructorUsedError;
  ResultState<BaseDomain> get refundOrderResult =>
      throw _privateConstructorUsedError;
  ResultState<BaseResponse> get sendClosingMailResult =>
      throw _privateConstructorUsedError;
  ResultState<String?> get getClosingMailResult =>
      throw _privateConstructorUsedError;
  DateTime? get filterDate => throw _privateConstructorUsedError;
  int? get actualEndingCash => throw _privateConstructorUsedError;
  ResultState<ClosingResponse> get closingResult =>
      throw _privateConstructorUsedError;
  ResultState<OutcomesResponse> get fetchOutcomesResult =>
      throw _privateConstructorUsedError;
  ResultState<BaseResponse> get addInOutcomeResult =>
      throw _privateConstructorUsedError;
  ResultState<BaseResponse> get updateOrderPrintSatusResult =>
      throw _privateConstructorUsedError;
  ResultState<IncomeResponse> get fetchIncomeListResult =>
      throw _privateConstructorUsedError;
  List<Order> get orders => throw _privateConstructorUsedError;
  List<User> get cashierNames => throw _privateConstructorUsedError;
  String get selectedCashierName => throw _privateConstructorUsedError;
  int get tabIndex => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TransactionStateCopyWith<TransactionState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionStateCopyWith<$Res> {
  factory $TransactionStateCopyWith(
          TransactionState value, $Res Function(TransactionState) then) =
      _$TransactionStateCopyWithImpl<$Res>;
  $Res call(
      {ResultState<Transaction> fetchTransactionResult,
      ResultState<BaseDomain> refundOrderResult,
      ResultState<BaseResponse> sendClosingMailResult,
      ResultState<String?> getClosingMailResult,
      DateTime? filterDate,
      int? actualEndingCash,
      ResultState<ClosingResponse> closingResult,
      ResultState<OutcomesResponse> fetchOutcomesResult,
      ResultState<BaseResponse> addInOutcomeResult,
      ResultState<BaseResponse> updateOrderPrintSatusResult,
      ResultState<IncomeResponse> fetchIncomeListResult,
      List<Order> orders,
      List<User> cashierNames,
      String selectedCashierName,
      int tabIndex});

  $ResultStateCopyWith<Transaction, $Res> get fetchTransactionResult;
  $ResultStateCopyWith<BaseDomain, $Res> get refundOrderResult;
  $ResultStateCopyWith<BaseResponse, $Res> get sendClosingMailResult;
  $ResultStateCopyWith<String?, $Res> get getClosingMailResult;
  $ResultStateCopyWith<ClosingResponse, $Res> get closingResult;
  $ResultStateCopyWith<OutcomesResponse, $Res> get fetchOutcomesResult;
  $ResultStateCopyWith<BaseResponse, $Res> get addInOutcomeResult;
  $ResultStateCopyWith<BaseResponse, $Res> get updateOrderPrintSatusResult;
  $ResultStateCopyWith<IncomeResponse, $Res> get fetchIncomeListResult;
}

/// @nodoc
class _$TransactionStateCopyWithImpl<$Res>
    implements $TransactionStateCopyWith<$Res> {
  _$TransactionStateCopyWithImpl(this._value, this._then);

  final TransactionState _value;
  // ignore: unused_field
  final $Res Function(TransactionState) _then;

  @override
  $Res call({
    Object? fetchTransactionResult = freezed,
    Object? refundOrderResult = freezed,
    Object? sendClosingMailResult = freezed,
    Object? getClosingMailResult = freezed,
    Object? filterDate = freezed,
    Object? actualEndingCash = freezed,
    Object? closingResult = freezed,
    Object? fetchOutcomesResult = freezed,
    Object? addInOutcomeResult = freezed,
    Object? updateOrderPrintSatusResult = freezed,
    Object? fetchIncomeListResult = freezed,
    Object? orders = freezed,
    Object? cashierNames = freezed,
    Object? selectedCashierName = freezed,
    Object? tabIndex = freezed,
  }) {
    return _then(_value.copyWith(
      fetchTransactionResult: fetchTransactionResult == freezed
          ? _value.fetchTransactionResult
          : fetchTransactionResult // ignore: cast_nullable_to_non_nullable
              as ResultState<Transaction>,
      refundOrderResult: refundOrderResult == freezed
          ? _value.refundOrderResult
          : refundOrderResult // ignore: cast_nullable_to_non_nullable
              as ResultState<BaseDomain>,
      sendClosingMailResult: sendClosingMailResult == freezed
          ? _value.sendClosingMailResult
          : sendClosingMailResult // ignore: cast_nullable_to_non_nullable
              as ResultState<BaseResponse>,
      getClosingMailResult: getClosingMailResult == freezed
          ? _value.getClosingMailResult
          : getClosingMailResult // ignore: cast_nullable_to_non_nullable
              as ResultState<String?>,
      filterDate: filterDate == freezed
          ? _value.filterDate
          : filterDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      actualEndingCash: actualEndingCash == freezed
          ? _value.actualEndingCash
          : actualEndingCash // ignore: cast_nullable_to_non_nullable
              as int?,
      closingResult: closingResult == freezed
          ? _value.closingResult
          : closingResult // ignore: cast_nullable_to_non_nullable
              as ResultState<ClosingResponse>,
      fetchOutcomesResult: fetchOutcomesResult == freezed
          ? _value.fetchOutcomesResult
          : fetchOutcomesResult // ignore: cast_nullable_to_non_nullable
              as ResultState<OutcomesResponse>,
      addInOutcomeResult: addInOutcomeResult == freezed
          ? _value.addInOutcomeResult
          : addInOutcomeResult // ignore: cast_nullable_to_non_nullable
              as ResultState<BaseResponse>,
      updateOrderPrintSatusResult: updateOrderPrintSatusResult == freezed
          ? _value.updateOrderPrintSatusResult
          : updateOrderPrintSatusResult // ignore: cast_nullable_to_non_nullable
              as ResultState<BaseResponse>,
      fetchIncomeListResult: fetchIncomeListResult == freezed
          ? _value.fetchIncomeListResult
          : fetchIncomeListResult // ignore: cast_nullable_to_non_nullable
              as ResultState<IncomeResponse>,
      orders: orders == freezed
          ? _value.orders
          : orders // ignore: cast_nullable_to_non_nullable
              as List<Order>,
      cashierNames: cashierNames == freezed
          ? _value.cashierNames
          : cashierNames // ignore: cast_nullable_to_non_nullable
              as List<User>,
      selectedCashierName: selectedCashierName == freezed
          ? _value.selectedCashierName
          : selectedCashierName // ignore: cast_nullable_to_non_nullable
              as String,
      tabIndex: tabIndex == freezed
          ? _value.tabIndex
          : tabIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  @override
  $ResultStateCopyWith<Transaction, $Res> get fetchTransactionResult {
    return $ResultStateCopyWith<Transaction, $Res>(
        _value.fetchTransactionResult, (value) {
      return _then(_value.copyWith(fetchTransactionResult: value));
    });
  }

  @override
  $ResultStateCopyWith<BaseDomain, $Res> get refundOrderResult {
    return $ResultStateCopyWith<BaseDomain, $Res>(_value.refundOrderResult,
        (value) {
      return _then(_value.copyWith(refundOrderResult: value));
    });
  }

  @override
  $ResultStateCopyWith<BaseResponse, $Res> get sendClosingMailResult {
    return $ResultStateCopyWith<BaseResponse, $Res>(
        _value.sendClosingMailResult, (value) {
      return _then(_value.copyWith(sendClosingMailResult: value));
    });
  }

  @override
  $ResultStateCopyWith<String?, $Res> get getClosingMailResult {
    return $ResultStateCopyWith<String?, $Res>(_value.getClosingMailResult,
        (value) {
      return _then(_value.copyWith(getClosingMailResult: value));
    });
  }

  @override
  $ResultStateCopyWith<ClosingResponse, $Res> get closingResult {
    return $ResultStateCopyWith<ClosingResponse, $Res>(_value.closingResult,
        (value) {
      return _then(_value.copyWith(closingResult: value));
    });
  }

  @override
  $ResultStateCopyWith<OutcomesResponse, $Res> get fetchOutcomesResult {
    return $ResultStateCopyWith<OutcomesResponse, $Res>(
        _value.fetchOutcomesResult, (value) {
      return _then(_value.copyWith(fetchOutcomesResult: value));
    });
  }

  @override
  $ResultStateCopyWith<BaseResponse, $Res> get addInOutcomeResult {
    return $ResultStateCopyWith<BaseResponse, $Res>(_value.addInOutcomeResult,
        (value) {
      return _then(_value.copyWith(addInOutcomeResult: value));
    });
  }

  @override
  $ResultStateCopyWith<BaseResponse, $Res> get updateOrderPrintSatusResult {
    return $ResultStateCopyWith<BaseResponse, $Res>(
        _value.updateOrderPrintSatusResult, (value) {
      return _then(_value.copyWith(updateOrderPrintSatusResult: value));
    });
  }

  @override
  $ResultStateCopyWith<IncomeResponse, $Res> get fetchIncomeListResult {
    return $ResultStateCopyWith<IncomeResponse, $Res>(
        _value.fetchIncomeListResult, (value) {
      return _then(_value.copyWith(fetchIncomeListResult: value));
    });
  }
}

/// @nodoc
abstract class _$TransactionStateCopyWith<$Res>
    implements $TransactionStateCopyWith<$Res> {
  factory _$TransactionStateCopyWith(
          _TransactionState value, $Res Function(_TransactionState) then) =
      __$TransactionStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {ResultState<Transaction> fetchTransactionResult,
      ResultState<BaseDomain> refundOrderResult,
      ResultState<BaseResponse> sendClosingMailResult,
      ResultState<String?> getClosingMailResult,
      DateTime? filterDate,
      int? actualEndingCash,
      ResultState<ClosingResponse> closingResult,
      ResultState<OutcomesResponse> fetchOutcomesResult,
      ResultState<BaseResponse> addInOutcomeResult,
      ResultState<BaseResponse> updateOrderPrintSatusResult,
      ResultState<IncomeResponse> fetchIncomeListResult,
      List<Order> orders,
      List<User> cashierNames,
      String selectedCashierName,
      int tabIndex});

  @override
  $ResultStateCopyWith<Transaction, $Res> get fetchTransactionResult;
  @override
  $ResultStateCopyWith<BaseDomain, $Res> get refundOrderResult;
  @override
  $ResultStateCopyWith<BaseResponse, $Res> get sendClosingMailResult;
  @override
  $ResultStateCopyWith<String?, $Res> get getClosingMailResult;
  @override
  $ResultStateCopyWith<ClosingResponse, $Res> get closingResult;
  @override
  $ResultStateCopyWith<OutcomesResponse, $Res> get fetchOutcomesResult;
  @override
  $ResultStateCopyWith<BaseResponse, $Res> get addInOutcomeResult;
  @override
  $ResultStateCopyWith<BaseResponse, $Res> get updateOrderPrintSatusResult;
  @override
  $ResultStateCopyWith<IncomeResponse, $Res> get fetchIncomeListResult;
}

/// @nodoc
class __$TransactionStateCopyWithImpl<$Res>
    extends _$TransactionStateCopyWithImpl<$Res>
    implements _$TransactionStateCopyWith<$Res> {
  __$TransactionStateCopyWithImpl(
      _TransactionState _value, $Res Function(_TransactionState) _then)
      : super(_value, (v) => _then(v as _TransactionState));

  @override
  _TransactionState get _value => super._value as _TransactionState;

  @override
  $Res call({
    Object? fetchTransactionResult = freezed,
    Object? refundOrderResult = freezed,
    Object? sendClosingMailResult = freezed,
    Object? getClosingMailResult = freezed,
    Object? filterDate = freezed,
    Object? actualEndingCash = freezed,
    Object? closingResult = freezed,
    Object? fetchOutcomesResult = freezed,
    Object? addInOutcomeResult = freezed,
    Object? updateOrderPrintSatusResult = freezed,
    Object? fetchIncomeListResult = freezed,
    Object? orders = freezed,
    Object? cashierNames = freezed,
    Object? selectedCashierName = freezed,
    Object? tabIndex = freezed,
  }) {
    return _then(_TransactionState(
      fetchTransactionResult: fetchTransactionResult == freezed
          ? _value.fetchTransactionResult
          : fetchTransactionResult // ignore: cast_nullable_to_non_nullable
              as ResultState<Transaction>,
      refundOrderResult: refundOrderResult == freezed
          ? _value.refundOrderResult
          : refundOrderResult // ignore: cast_nullable_to_non_nullable
              as ResultState<BaseDomain>,
      sendClosingMailResult: sendClosingMailResult == freezed
          ? _value.sendClosingMailResult
          : sendClosingMailResult // ignore: cast_nullable_to_non_nullable
              as ResultState<BaseResponse>,
      getClosingMailResult: getClosingMailResult == freezed
          ? _value.getClosingMailResult
          : getClosingMailResult // ignore: cast_nullable_to_non_nullable
              as ResultState<String?>,
      filterDate: filterDate == freezed
          ? _value.filterDate
          : filterDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      actualEndingCash: actualEndingCash == freezed
          ? _value.actualEndingCash
          : actualEndingCash // ignore: cast_nullable_to_non_nullable
              as int?,
      closingResult: closingResult == freezed
          ? _value.closingResult
          : closingResult // ignore: cast_nullable_to_non_nullable
              as ResultState<ClosingResponse>,
      fetchOutcomesResult: fetchOutcomesResult == freezed
          ? _value.fetchOutcomesResult
          : fetchOutcomesResult // ignore: cast_nullable_to_non_nullable
              as ResultState<OutcomesResponse>,
      addInOutcomeResult: addInOutcomeResult == freezed
          ? _value.addInOutcomeResult
          : addInOutcomeResult // ignore: cast_nullable_to_non_nullable
              as ResultState<BaseResponse>,
      updateOrderPrintSatusResult: updateOrderPrintSatusResult == freezed
          ? _value.updateOrderPrintSatusResult
          : updateOrderPrintSatusResult // ignore: cast_nullable_to_non_nullable
              as ResultState<BaseResponse>,
      fetchIncomeListResult: fetchIncomeListResult == freezed
          ? _value.fetchIncomeListResult
          : fetchIncomeListResult // ignore: cast_nullable_to_non_nullable
              as ResultState<IncomeResponse>,
      orders: orders == freezed
          ? _value.orders
          : orders // ignore: cast_nullable_to_non_nullable
              as List<Order>,
      cashierNames: cashierNames == freezed
          ? _value.cashierNames
          : cashierNames // ignore: cast_nullable_to_non_nullable
              as List<User>,
      selectedCashierName: selectedCashierName == freezed
          ? _value.selectedCashierName
          : selectedCashierName // ignore: cast_nullable_to_non_nullable
              as String,
      tabIndex: tabIndex == freezed
          ? _value.tabIndex
          : tabIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_TransactionState implements _TransactionState {
  const _$_TransactionState(
      {required this.fetchTransactionResult,
      required this.refundOrderResult,
      required this.sendClosingMailResult,
      required this.getClosingMailResult,
      required this.filterDate,
      required this.actualEndingCash,
      required this.closingResult,
      required this.fetchOutcomesResult,
      required this.addInOutcomeResult,
      required this.updateOrderPrintSatusResult,
      required this.fetchIncomeListResult,
      required this.orders,
      required this.cashierNames,
      required this.selectedCashierName,
      required this.tabIndex});

  @override
  final ResultState<Transaction> fetchTransactionResult;
  @override
  final ResultState<BaseDomain> refundOrderResult;
  @override
  final ResultState<BaseResponse> sendClosingMailResult;
  @override
  final ResultState<String?> getClosingMailResult;
  @override
  final DateTime? filterDate;
  @override
  final int? actualEndingCash;
  @override
  final ResultState<ClosingResponse> closingResult;
  @override
  final ResultState<OutcomesResponse> fetchOutcomesResult;
  @override
  final ResultState<BaseResponse> addInOutcomeResult;
  @override
  final ResultState<BaseResponse> updateOrderPrintSatusResult;
  @override
  final ResultState<IncomeResponse> fetchIncomeListResult;
  @override
  final List<Order> orders;
  @override
  final List<User> cashierNames;
  @override
  final String selectedCashierName;
  @override
  final int tabIndex;

  @override
  String toString() {
    return 'TransactionState(fetchTransactionResult: $fetchTransactionResult, refundOrderResult: $refundOrderResult, sendClosingMailResult: $sendClosingMailResult, getClosingMailResult: $getClosingMailResult, filterDate: $filterDate, actualEndingCash: $actualEndingCash, closingResult: $closingResult, fetchOutcomesResult: $fetchOutcomesResult, addInOutcomeResult: $addInOutcomeResult, updateOrderPrintSatusResult: $updateOrderPrintSatusResult, fetchIncomeListResult: $fetchIncomeListResult, orders: $orders, cashierNames: $cashierNames, selectedCashierName: $selectedCashierName, tabIndex: $tabIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TransactionState &&
            const DeepCollectionEquality()
                .equals(other.fetchTransactionResult, fetchTransactionResult) &&
            const DeepCollectionEquality()
                .equals(other.refundOrderResult, refundOrderResult) &&
            const DeepCollectionEquality()
                .equals(other.sendClosingMailResult, sendClosingMailResult) &&
            const DeepCollectionEquality()
                .equals(other.getClosingMailResult, getClosingMailResult) &&
            const DeepCollectionEquality()
                .equals(other.filterDate, filterDate) &&
            const DeepCollectionEquality()
                .equals(other.actualEndingCash, actualEndingCash) &&
            const DeepCollectionEquality()
                .equals(other.closingResult, closingResult) &&
            const DeepCollectionEquality()
                .equals(other.fetchOutcomesResult, fetchOutcomesResult) &&
            const DeepCollectionEquality()
                .equals(other.addInOutcomeResult, addInOutcomeResult) &&
            const DeepCollectionEquality().equals(
                other.updateOrderPrintSatusResult,
                updateOrderPrintSatusResult) &&
            const DeepCollectionEquality()
                .equals(other.fetchIncomeListResult, fetchIncomeListResult) &&
            const DeepCollectionEquality().equals(other.orders, orders) &&
            const DeepCollectionEquality()
                .equals(other.cashierNames, cashierNames) &&
            const DeepCollectionEquality()
                .equals(other.selectedCashierName, selectedCashierName) &&
            const DeepCollectionEquality().equals(other.tabIndex, tabIndex));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(fetchTransactionResult),
      const DeepCollectionEquality().hash(refundOrderResult),
      const DeepCollectionEquality().hash(sendClosingMailResult),
      const DeepCollectionEquality().hash(getClosingMailResult),
      const DeepCollectionEquality().hash(filterDate),
      const DeepCollectionEquality().hash(actualEndingCash),
      const DeepCollectionEquality().hash(closingResult),
      const DeepCollectionEquality().hash(fetchOutcomesResult),
      const DeepCollectionEquality().hash(addInOutcomeResult),
      const DeepCollectionEquality().hash(updateOrderPrintSatusResult),
      const DeepCollectionEquality().hash(fetchIncomeListResult),
      const DeepCollectionEquality().hash(orders),
      const DeepCollectionEquality().hash(cashierNames),
      const DeepCollectionEquality().hash(selectedCashierName),
      const DeepCollectionEquality().hash(tabIndex));

  @JsonKey(ignore: true)
  @override
  _$TransactionStateCopyWith<_TransactionState> get copyWith =>
      __$TransactionStateCopyWithImpl<_TransactionState>(this, _$identity);
}

abstract class _TransactionState implements TransactionState {
  const factory _TransactionState(
      {required ResultState<Transaction> fetchTransactionResult,
      required ResultState<BaseDomain> refundOrderResult,
      required ResultState<BaseResponse> sendClosingMailResult,
      required ResultState<String?> getClosingMailResult,
      required DateTime? filterDate,
      required int? actualEndingCash,
      required ResultState<ClosingResponse> closingResult,
      required ResultState<OutcomesResponse> fetchOutcomesResult,
      required ResultState<BaseResponse> addInOutcomeResult,
      required ResultState<BaseResponse> updateOrderPrintSatusResult,
      required ResultState<IncomeResponse> fetchIncomeListResult,
      required List<Order> orders,
      required List<User> cashierNames,
      required String selectedCashierName,
      required int tabIndex}) = _$_TransactionState;

  @override
  ResultState<Transaction> get fetchTransactionResult;
  @override
  ResultState<BaseDomain> get refundOrderResult;
  @override
  ResultState<BaseResponse> get sendClosingMailResult;
  @override
  ResultState<String?> get getClosingMailResult;
  @override
  DateTime? get filterDate;
  @override
  int? get actualEndingCash;
  @override
  ResultState<ClosingResponse> get closingResult;
  @override
  ResultState<OutcomesResponse> get fetchOutcomesResult;
  @override
  ResultState<BaseResponse> get addInOutcomeResult;
  @override
  ResultState<BaseResponse> get updateOrderPrintSatusResult;
  @override
  ResultState<IncomeResponse> get fetchIncomeListResult;
  @override
  List<Order> get orders;
  @override
  List<User> get cashierNames;
  @override
  String get selectedCashierName;
  @override
  int get tabIndex;
  @override
  @JsonKey(ignore: true)
  _$TransactionStateCopyWith<_TransactionState> get copyWith =>
      throw _privateConstructorUsedError;
}
