// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'closing_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ClosingResponse _$ClosingResponseFromJson(Map<String, dynamic> json) {
  return _ClosingResponse.fromJson(json);
}

/// @nodoc
class _$ClosingResponseTearOff {
  const _$ClosingResponseTearOff();

  _ClosingResponse call({required Struk? struk}) {
    return _ClosingResponse(
      struk: struk,
    );
  }

  ClosingResponse fromJson(Map<String, Object?> json) {
    return ClosingResponse.fromJson(json);
  }
}

/// @nodoc
const $ClosingResponse = _$ClosingResponseTearOff();

/// @nodoc
mixin _$ClosingResponse {
  Struk? get struk => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ClosingResponseCopyWith<ClosingResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClosingResponseCopyWith<$Res> {
  factory $ClosingResponseCopyWith(
          ClosingResponse value, $Res Function(ClosingResponse) then) =
      _$ClosingResponseCopyWithImpl<$Res>;
  $Res call({Struk? struk});

  $StrukCopyWith<$Res>? get struk;
}

/// @nodoc
class _$ClosingResponseCopyWithImpl<$Res>
    implements $ClosingResponseCopyWith<$Res> {
  _$ClosingResponseCopyWithImpl(this._value, this._then);

  final ClosingResponse _value;
  // ignore: unused_field
  final $Res Function(ClosingResponse) _then;

  @override
  $Res call({
    Object? struk = freezed,
  }) {
    return _then(_value.copyWith(
      struk: struk == freezed
          ? _value.struk
          : struk // ignore: cast_nullable_to_non_nullable
              as Struk?,
    ));
  }

  @override
  $StrukCopyWith<$Res>? get struk {
    if (_value.struk == null) {
      return null;
    }

    return $StrukCopyWith<$Res>(_value.struk!, (value) {
      return _then(_value.copyWith(struk: value));
    });
  }
}

/// @nodoc
abstract class _$ClosingResponseCopyWith<$Res>
    implements $ClosingResponseCopyWith<$Res> {
  factory _$ClosingResponseCopyWith(
          _ClosingResponse value, $Res Function(_ClosingResponse) then) =
      __$ClosingResponseCopyWithImpl<$Res>;
  @override
  $Res call({Struk? struk});

  @override
  $StrukCopyWith<$Res>? get struk;
}

/// @nodoc
class __$ClosingResponseCopyWithImpl<$Res>
    extends _$ClosingResponseCopyWithImpl<$Res>
    implements _$ClosingResponseCopyWith<$Res> {
  __$ClosingResponseCopyWithImpl(
      _ClosingResponse _value, $Res Function(_ClosingResponse) _then)
      : super(_value, (v) => _then(v as _ClosingResponse));

  @override
  _ClosingResponse get _value => super._value as _ClosingResponse;

  @override
  $Res call({
    Object? struk = freezed,
  }) {
    return _then(_ClosingResponse(
      struk: struk == freezed
          ? _value.struk
          : struk // ignore: cast_nullable_to_non_nullable
              as Struk?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ClosingResponse implements _ClosingResponse {
  const _$_ClosingResponse({required this.struk});

  factory _$_ClosingResponse.fromJson(Map<String, dynamic> json) =>
      _$$_ClosingResponseFromJson(json);

  @override
  final Struk? struk;

  @override
  String toString() {
    return 'ClosingResponse(struk: $struk)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ClosingResponse &&
            const DeepCollectionEquality().equals(other.struk, struk));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(struk));

  @JsonKey(ignore: true)
  @override
  _$ClosingResponseCopyWith<_ClosingResponse> get copyWith =>
      __$ClosingResponseCopyWithImpl<_ClosingResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ClosingResponseToJson(this);
  }
}

abstract class _ClosingResponse implements ClosingResponse {
  const factory _ClosingResponse({required Struk? struk}) = _$_ClosingResponse;

  factory _ClosingResponse.fromJson(Map<String, dynamic> json) =
      _$_ClosingResponse.fromJson;

  @override
  Struk? get struk;
  @override
  @JsonKey(ignore: true)
  _$ClosingResponseCopyWith<_ClosingResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

Struk _$StrukFromJson(Map<String, dynamic> json) {
  return _Struk.fromJson(json);
}

/// @nodoc
class _$StrukTearOff {
  const _$StrukTearOff();

  _Struk call(
      {@JsonKey(name: 'shift_print')
          required ShiftPrint? shiftPrint,
      @JsonKey(name: 'transaction_detail')
          required List<TransactionDetail>? transactionDetail,
      @JsonKey(name: 'payment_detail')
          required PaymentDetail? paymentDetail,
      @JsonKey(name: 'outcome_detail')
          required List<OutcomeDetail>? outcomeDetail,
      @JsonKey(name: 'kas_detail')
          required KasDetail? kasDetail,
      @JsonKey(name: 'cash_management_detail')
          required CashManagementDetail? cashManagementDetail,
      @JsonKey(name: 'refunded_items')
          required List<RefundedItem>? refundedItems}) {
    return _Struk(
      shiftPrint: shiftPrint,
      transactionDetail: transactionDetail,
      paymentDetail: paymentDetail,
      outcomeDetail: outcomeDetail,
      kasDetail: kasDetail,
      cashManagementDetail: cashManagementDetail,
      refundedItems: refundedItems,
    );
  }

  Struk fromJson(Map<String, Object?> json) {
    return Struk.fromJson(json);
  }
}

/// @nodoc
const $Struk = _$StrukTearOff();

/// @nodoc
mixin _$Struk {
  @JsonKey(name: 'shift_print')
  ShiftPrint? get shiftPrint => throw _privateConstructorUsedError;
  @JsonKey(name: 'transaction_detail')
  List<TransactionDetail>? get transactionDetail =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'payment_detail')
  PaymentDetail? get paymentDetail => throw _privateConstructorUsedError;
  @JsonKey(name: 'outcome_detail')
  List<OutcomeDetail>? get outcomeDetail => throw _privateConstructorUsedError;
  @JsonKey(name: 'kas_detail')
  KasDetail? get kasDetail => throw _privateConstructorUsedError;
  @JsonKey(name: 'cash_management_detail')
  CashManagementDetail? get cashManagementDetail =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'refunded_items')
  List<RefundedItem>? get refundedItems => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StrukCopyWith<Struk> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StrukCopyWith<$Res> {
  factory $StrukCopyWith(Struk value, $Res Function(Struk) then) =
      _$StrukCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'shift_print')
          ShiftPrint? shiftPrint,
      @JsonKey(name: 'transaction_detail')
          List<TransactionDetail>? transactionDetail,
      @JsonKey(name: 'payment_detail')
          PaymentDetail? paymentDetail,
      @JsonKey(name: 'outcome_detail')
          List<OutcomeDetail>? outcomeDetail,
      @JsonKey(name: 'kas_detail')
          KasDetail? kasDetail,
      @JsonKey(name: 'cash_management_detail')
          CashManagementDetail? cashManagementDetail,
      @JsonKey(name: 'refunded_items')
          List<RefundedItem>? refundedItems});

  $ShiftPrintCopyWith<$Res>? get shiftPrint;
  $PaymentDetailCopyWith<$Res>? get paymentDetail;
  $KasDetailCopyWith<$Res>? get kasDetail;
  $CashManagementDetailCopyWith<$Res>? get cashManagementDetail;
}

/// @nodoc
class _$StrukCopyWithImpl<$Res> implements $StrukCopyWith<$Res> {
  _$StrukCopyWithImpl(this._value, this._then);

  final Struk _value;
  // ignore: unused_field
  final $Res Function(Struk) _then;

  @override
  $Res call({
    Object? shiftPrint = freezed,
    Object? transactionDetail = freezed,
    Object? paymentDetail = freezed,
    Object? outcomeDetail = freezed,
    Object? kasDetail = freezed,
    Object? cashManagementDetail = freezed,
    Object? refundedItems = freezed,
  }) {
    return _then(_value.copyWith(
      shiftPrint: shiftPrint == freezed
          ? _value.shiftPrint
          : shiftPrint // ignore: cast_nullable_to_non_nullable
              as ShiftPrint?,
      transactionDetail: transactionDetail == freezed
          ? _value.transactionDetail
          : transactionDetail // ignore: cast_nullable_to_non_nullable
              as List<TransactionDetail>?,
      paymentDetail: paymentDetail == freezed
          ? _value.paymentDetail
          : paymentDetail // ignore: cast_nullable_to_non_nullable
              as PaymentDetail?,
      outcomeDetail: outcomeDetail == freezed
          ? _value.outcomeDetail
          : outcomeDetail // ignore: cast_nullable_to_non_nullable
              as List<OutcomeDetail>?,
      kasDetail: kasDetail == freezed
          ? _value.kasDetail
          : kasDetail // ignore: cast_nullable_to_non_nullable
              as KasDetail?,
      cashManagementDetail: cashManagementDetail == freezed
          ? _value.cashManagementDetail
          : cashManagementDetail // ignore: cast_nullable_to_non_nullable
              as CashManagementDetail?,
      refundedItems: refundedItems == freezed
          ? _value.refundedItems
          : refundedItems // ignore: cast_nullable_to_non_nullable
              as List<RefundedItem>?,
    ));
  }

  @override
  $ShiftPrintCopyWith<$Res>? get shiftPrint {
    if (_value.shiftPrint == null) {
      return null;
    }

    return $ShiftPrintCopyWith<$Res>(_value.shiftPrint!, (value) {
      return _then(_value.copyWith(shiftPrint: value));
    });
  }

  @override
  $PaymentDetailCopyWith<$Res>? get paymentDetail {
    if (_value.paymentDetail == null) {
      return null;
    }

    return $PaymentDetailCopyWith<$Res>(_value.paymentDetail!, (value) {
      return _then(_value.copyWith(paymentDetail: value));
    });
  }

  @override
  $KasDetailCopyWith<$Res>? get kasDetail {
    if (_value.kasDetail == null) {
      return null;
    }

    return $KasDetailCopyWith<$Res>(_value.kasDetail!, (value) {
      return _then(_value.copyWith(kasDetail: value));
    });
  }

  @override
  $CashManagementDetailCopyWith<$Res>? get cashManagementDetail {
    if (_value.cashManagementDetail == null) {
      return null;
    }

    return $CashManagementDetailCopyWith<$Res>(_value.cashManagementDetail!,
        (value) {
      return _then(_value.copyWith(cashManagementDetail: value));
    });
  }
}

/// @nodoc
abstract class _$StrukCopyWith<$Res> implements $StrukCopyWith<$Res> {
  factory _$StrukCopyWith(_Struk value, $Res Function(_Struk) then) =
      __$StrukCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'shift_print')
          ShiftPrint? shiftPrint,
      @JsonKey(name: 'transaction_detail')
          List<TransactionDetail>? transactionDetail,
      @JsonKey(name: 'payment_detail')
          PaymentDetail? paymentDetail,
      @JsonKey(name: 'outcome_detail')
          List<OutcomeDetail>? outcomeDetail,
      @JsonKey(name: 'kas_detail')
          KasDetail? kasDetail,
      @JsonKey(name: 'cash_management_detail')
          CashManagementDetail? cashManagementDetail,
      @JsonKey(name: 'refunded_items')
          List<RefundedItem>? refundedItems});

  @override
  $ShiftPrintCopyWith<$Res>? get shiftPrint;
  @override
  $PaymentDetailCopyWith<$Res>? get paymentDetail;
  @override
  $KasDetailCopyWith<$Res>? get kasDetail;
  @override
  $CashManagementDetailCopyWith<$Res>? get cashManagementDetail;
}

/// @nodoc
class __$StrukCopyWithImpl<$Res> extends _$StrukCopyWithImpl<$Res>
    implements _$StrukCopyWith<$Res> {
  __$StrukCopyWithImpl(_Struk _value, $Res Function(_Struk) _then)
      : super(_value, (v) => _then(v as _Struk));

  @override
  _Struk get _value => super._value as _Struk;

  @override
  $Res call({
    Object? shiftPrint = freezed,
    Object? transactionDetail = freezed,
    Object? paymentDetail = freezed,
    Object? outcomeDetail = freezed,
    Object? kasDetail = freezed,
    Object? cashManagementDetail = freezed,
    Object? refundedItems = freezed,
  }) {
    return _then(_Struk(
      shiftPrint: shiftPrint == freezed
          ? _value.shiftPrint
          : shiftPrint // ignore: cast_nullable_to_non_nullable
              as ShiftPrint?,
      transactionDetail: transactionDetail == freezed
          ? _value.transactionDetail
          : transactionDetail // ignore: cast_nullable_to_non_nullable
              as List<TransactionDetail>?,
      paymentDetail: paymentDetail == freezed
          ? _value.paymentDetail
          : paymentDetail // ignore: cast_nullable_to_non_nullable
              as PaymentDetail?,
      outcomeDetail: outcomeDetail == freezed
          ? _value.outcomeDetail
          : outcomeDetail // ignore: cast_nullable_to_non_nullable
              as List<OutcomeDetail>?,
      kasDetail: kasDetail == freezed
          ? _value.kasDetail
          : kasDetail // ignore: cast_nullable_to_non_nullable
              as KasDetail?,
      cashManagementDetail: cashManagementDetail == freezed
          ? _value.cashManagementDetail
          : cashManagementDetail // ignore: cast_nullable_to_non_nullable
              as CashManagementDetail?,
      refundedItems: refundedItems == freezed
          ? _value.refundedItems
          : refundedItems // ignore: cast_nullable_to_non_nullable
              as List<RefundedItem>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Struk implements _Struk {
  const _$_Struk(
      {@JsonKey(name: 'shift_print')
          required this.shiftPrint,
      @JsonKey(name: 'transaction_detail')
          required this.transactionDetail,
      @JsonKey(name: 'payment_detail')
          required this.paymentDetail,
      @JsonKey(name: 'outcome_detail')
          required this.outcomeDetail,
      @JsonKey(name: 'kas_detail')
          required this.kasDetail,
      @JsonKey(name: 'cash_management_detail')
          required this.cashManagementDetail,
      @JsonKey(name: 'refunded_items')
          required this.refundedItems});

  factory _$_Struk.fromJson(Map<String, dynamic> json) =>
      _$$_StrukFromJson(json);

  @override
  @JsonKey(name: 'shift_print')
  final ShiftPrint? shiftPrint;
  @override
  @JsonKey(name: 'transaction_detail')
  final List<TransactionDetail>? transactionDetail;
  @override
  @JsonKey(name: 'payment_detail')
  final PaymentDetail? paymentDetail;
  @override
  @JsonKey(name: 'outcome_detail')
  final List<OutcomeDetail>? outcomeDetail;
  @override
  @JsonKey(name: 'kas_detail')
  final KasDetail? kasDetail;
  @override
  @JsonKey(name: 'cash_management_detail')
  final CashManagementDetail? cashManagementDetail;
  @override
  @JsonKey(name: 'refunded_items')
  final List<RefundedItem>? refundedItems;

  @override
  String toString() {
    return 'Struk(shiftPrint: $shiftPrint, transactionDetail: $transactionDetail, paymentDetail: $paymentDetail, outcomeDetail: $outcomeDetail, kasDetail: $kasDetail, cashManagementDetail: $cashManagementDetail, refundedItems: $refundedItems)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Struk &&
            const DeepCollectionEquality()
                .equals(other.shiftPrint, shiftPrint) &&
            const DeepCollectionEquality()
                .equals(other.transactionDetail, transactionDetail) &&
            const DeepCollectionEquality()
                .equals(other.paymentDetail, paymentDetail) &&
            const DeepCollectionEquality()
                .equals(other.outcomeDetail, outcomeDetail) &&
            const DeepCollectionEquality().equals(other.kasDetail, kasDetail) &&
            const DeepCollectionEquality()
                .equals(other.cashManagementDetail, cashManagementDetail) &&
            const DeepCollectionEquality()
                .equals(other.refundedItems, refundedItems));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(shiftPrint),
      const DeepCollectionEquality().hash(transactionDetail),
      const DeepCollectionEquality().hash(paymentDetail),
      const DeepCollectionEquality().hash(outcomeDetail),
      const DeepCollectionEquality().hash(kasDetail),
      const DeepCollectionEquality().hash(cashManagementDetail),
      const DeepCollectionEquality().hash(refundedItems));

  @JsonKey(ignore: true)
  @override
  _$StrukCopyWith<_Struk> get copyWith =>
      __$StrukCopyWithImpl<_Struk>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StrukToJson(this);
  }
}

abstract class _Struk implements Struk {
  const factory _Struk(
      {@JsonKey(name: 'shift_print')
          required ShiftPrint? shiftPrint,
      @JsonKey(name: 'transaction_detail')
          required List<TransactionDetail>? transactionDetail,
      @JsonKey(name: 'payment_detail')
          required PaymentDetail? paymentDetail,
      @JsonKey(name: 'outcome_detail')
          required List<OutcomeDetail>? outcomeDetail,
      @JsonKey(name: 'kas_detail')
          required KasDetail? kasDetail,
      @JsonKey(name: 'cash_management_detail')
          required CashManagementDetail? cashManagementDetail,
      @JsonKey(name: 'refunded_items')
          required List<RefundedItem>? refundedItems}) = _$_Struk;

  factory _Struk.fromJson(Map<String, dynamic> json) = _$_Struk.fromJson;

  @override
  @JsonKey(name: 'shift_print')
  ShiftPrint? get shiftPrint;
  @override
  @JsonKey(name: 'transaction_detail')
  List<TransactionDetail>? get transactionDetail;
  @override
  @JsonKey(name: 'payment_detail')
  PaymentDetail? get paymentDetail;
  @override
  @JsonKey(name: 'outcome_detail')
  List<OutcomeDetail>? get outcomeDetail;
  @override
  @JsonKey(name: 'kas_detail')
  KasDetail? get kasDetail;
  @override
  @JsonKey(name: 'cash_management_detail')
  CashManagementDetail? get cashManagementDetail;
  @override
  @JsonKey(name: 'refunded_items')
  List<RefundedItem>? get refundedItems;
  @override
  @JsonKey(ignore: true)
  _$StrukCopyWith<_Struk> get copyWith => throw _privateConstructorUsedError;
}

KasDetail _$KasDetailFromJson(Map<String, dynamic> json) {
  return _KasDetail.fromJson(json);
}

/// @nodoc
class _$KasDetailTearOff {
  const _$KasDetailTearOff();

  _KasDetail call({required int outcome, required int income}) {
    return _KasDetail(
      outcome: outcome,
      income: income,
    );
  }

  KasDetail fromJson(Map<String, Object?> json) {
    return KasDetail.fromJson(json);
  }
}

/// @nodoc
const $KasDetail = _$KasDetailTearOff();

/// @nodoc
mixin _$KasDetail {
  int get outcome => throw _privateConstructorUsedError;
  int get income => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $KasDetailCopyWith<KasDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KasDetailCopyWith<$Res> {
  factory $KasDetailCopyWith(KasDetail value, $Res Function(KasDetail) then) =
      _$KasDetailCopyWithImpl<$Res>;
  $Res call({int outcome, int income});
}

/// @nodoc
class _$KasDetailCopyWithImpl<$Res> implements $KasDetailCopyWith<$Res> {
  _$KasDetailCopyWithImpl(this._value, this._then);

  final KasDetail _value;
  // ignore: unused_field
  final $Res Function(KasDetail) _then;

  @override
  $Res call({
    Object? outcome = freezed,
    Object? income = freezed,
  }) {
    return _then(_value.copyWith(
      outcome: outcome == freezed
          ? _value.outcome
          : outcome // ignore: cast_nullable_to_non_nullable
              as int,
      income: income == freezed
          ? _value.income
          : income // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$KasDetailCopyWith<$Res> implements $KasDetailCopyWith<$Res> {
  factory _$KasDetailCopyWith(
          _KasDetail value, $Res Function(_KasDetail) then) =
      __$KasDetailCopyWithImpl<$Res>;
  @override
  $Res call({int outcome, int income});
}

/// @nodoc
class __$KasDetailCopyWithImpl<$Res> extends _$KasDetailCopyWithImpl<$Res>
    implements _$KasDetailCopyWith<$Res> {
  __$KasDetailCopyWithImpl(_KasDetail _value, $Res Function(_KasDetail) _then)
      : super(_value, (v) => _then(v as _KasDetail));

  @override
  _KasDetail get _value => super._value as _KasDetail;

  @override
  $Res call({
    Object? outcome = freezed,
    Object? income = freezed,
  }) {
    return _then(_KasDetail(
      outcome: outcome == freezed
          ? _value.outcome
          : outcome // ignore: cast_nullable_to_non_nullable
              as int,
      income: income == freezed
          ? _value.income
          : income // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_KasDetail implements _KasDetail {
  const _$_KasDetail({required this.outcome, required this.income});

  factory _$_KasDetail.fromJson(Map<String, dynamic> json) =>
      _$$_KasDetailFromJson(json);

  @override
  final int outcome;
  @override
  final int income;

  @override
  String toString() {
    return 'KasDetail(outcome: $outcome, income: $income)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _KasDetail &&
            const DeepCollectionEquality().equals(other.outcome, outcome) &&
            const DeepCollectionEquality().equals(other.income, income));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(outcome),
      const DeepCollectionEquality().hash(income));

  @JsonKey(ignore: true)
  @override
  _$KasDetailCopyWith<_KasDetail> get copyWith =>
      __$KasDetailCopyWithImpl<_KasDetail>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_KasDetailToJson(this);
  }
}

abstract class _KasDetail implements KasDetail {
  const factory _KasDetail({required int outcome, required int income}) =
      _$_KasDetail;

  factory _KasDetail.fromJson(Map<String, dynamic> json) =
      _$_KasDetail.fromJson;

  @override
  int get outcome;
  @override
  int get income;
  @override
  @JsonKey(ignore: true)
  _$KasDetailCopyWith<_KasDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

CashManagementDetail _$CashManagementDetailFromJson(Map<String, dynamic> json) {
  return _CashManagementDetail.fromJson(json);
}

/// @nodoc
class _$CashManagementDetailTearOff {
  const _$CashManagementDetailTearOff();

  _CashManagementDetail call(
      {@JsonKey(name: 'cash_payment')
          required int? cashPayment,
      @JsonKey(name: 'expected_ending_cash')
          required int? expectedEndingCash,
      @JsonKey(name: 'actual_ending_cash')
          required int? actualEndingCash,
      @JsonKey(name: 'cash_difference')
          required int? cashDifference,
      @JsonKey(name: 'income')
          required List<OutcomeDetail>? incomeCashManagementDetail,
      @JsonKey(name: 'expense')
          required List<OutcomeDetail>? expense}) {
    return _CashManagementDetail(
      cashPayment: cashPayment,
      expectedEndingCash: expectedEndingCash,
      actualEndingCash: actualEndingCash,
      cashDifference: cashDifference,
      incomeCashManagementDetail: incomeCashManagementDetail,
      expense: expense,
    );
  }

  CashManagementDetail fromJson(Map<String, Object?> json) {
    return CashManagementDetail.fromJson(json);
  }
}

/// @nodoc
const $CashManagementDetail = _$CashManagementDetailTearOff();

/// @nodoc
mixin _$CashManagementDetail {
  @JsonKey(name: 'cash_payment')
  int? get cashPayment => throw _privateConstructorUsedError;
  @JsonKey(name: 'expected_ending_cash')
  int? get expectedEndingCash => throw _privateConstructorUsedError;
  @JsonKey(name: 'actual_ending_cash')
  int? get actualEndingCash => throw _privateConstructorUsedError;
  @JsonKey(name: 'cash_difference')
  int? get cashDifference => throw _privateConstructorUsedError;
  @JsonKey(name: 'income')
  List<OutcomeDetail>? get incomeCashManagementDetail =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'expense')
  List<OutcomeDetail>? get expense => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CashManagementDetailCopyWith<CashManagementDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CashManagementDetailCopyWith<$Res> {
  factory $CashManagementDetailCopyWith(CashManagementDetail value,
          $Res Function(CashManagementDetail) then) =
      _$CashManagementDetailCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'cash_payment') int? cashPayment,
      @JsonKey(name: 'expected_ending_cash') int? expectedEndingCash,
      @JsonKey(name: 'actual_ending_cash') int? actualEndingCash,
      @JsonKey(name: 'cash_difference') int? cashDifference,
      @JsonKey(name: 'income') List<OutcomeDetail>? incomeCashManagementDetail,
      @JsonKey(name: 'expense') List<OutcomeDetail>? expense});
}

/// @nodoc
class _$CashManagementDetailCopyWithImpl<$Res>
    implements $CashManagementDetailCopyWith<$Res> {
  _$CashManagementDetailCopyWithImpl(this._value, this._then);

  final CashManagementDetail _value;
  // ignore: unused_field
  final $Res Function(CashManagementDetail) _then;

  @override
  $Res call({
    Object? cashPayment = freezed,
    Object? expectedEndingCash = freezed,
    Object? actualEndingCash = freezed,
    Object? cashDifference = freezed,
    Object? incomeCashManagementDetail = freezed,
    Object? expense = freezed,
  }) {
    return _then(_value.copyWith(
      cashPayment: cashPayment == freezed
          ? _value.cashPayment
          : cashPayment // ignore: cast_nullable_to_non_nullable
              as int?,
      expectedEndingCash: expectedEndingCash == freezed
          ? _value.expectedEndingCash
          : expectedEndingCash // ignore: cast_nullable_to_non_nullable
              as int?,
      actualEndingCash: actualEndingCash == freezed
          ? _value.actualEndingCash
          : actualEndingCash // ignore: cast_nullable_to_non_nullable
              as int?,
      cashDifference: cashDifference == freezed
          ? _value.cashDifference
          : cashDifference // ignore: cast_nullable_to_non_nullable
              as int?,
      incomeCashManagementDetail: incomeCashManagementDetail == freezed
          ? _value.incomeCashManagementDetail
          : incomeCashManagementDetail // ignore: cast_nullable_to_non_nullable
              as List<OutcomeDetail>?,
      expense: expense == freezed
          ? _value.expense
          : expense // ignore: cast_nullable_to_non_nullable
              as List<OutcomeDetail>?,
    ));
  }
}

/// @nodoc
abstract class _$CashManagementDetailCopyWith<$Res>
    implements $CashManagementDetailCopyWith<$Res> {
  factory _$CashManagementDetailCopyWith(_CashManagementDetail value,
          $Res Function(_CashManagementDetail) then) =
      __$CashManagementDetailCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'cash_payment') int? cashPayment,
      @JsonKey(name: 'expected_ending_cash') int? expectedEndingCash,
      @JsonKey(name: 'actual_ending_cash') int? actualEndingCash,
      @JsonKey(name: 'cash_difference') int? cashDifference,
      @JsonKey(name: 'income') List<OutcomeDetail>? incomeCashManagementDetail,
      @JsonKey(name: 'expense') List<OutcomeDetail>? expense});
}

/// @nodoc
class __$CashManagementDetailCopyWithImpl<$Res>
    extends _$CashManagementDetailCopyWithImpl<$Res>
    implements _$CashManagementDetailCopyWith<$Res> {
  __$CashManagementDetailCopyWithImpl(
      _CashManagementDetail _value, $Res Function(_CashManagementDetail) _then)
      : super(_value, (v) => _then(v as _CashManagementDetail));

  @override
  _CashManagementDetail get _value => super._value as _CashManagementDetail;

  @override
  $Res call({
    Object? cashPayment = freezed,
    Object? expectedEndingCash = freezed,
    Object? actualEndingCash = freezed,
    Object? cashDifference = freezed,
    Object? incomeCashManagementDetail = freezed,
    Object? expense = freezed,
  }) {
    return _then(_CashManagementDetail(
      cashPayment: cashPayment == freezed
          ? _value.cashPayment
          : cashPayment // ignore: cast_nullable_to_non_nullable
              as int?,
      expectedEndingCash: expectedEndingCash == freezed
          ? _value.expectedEndingCash
          : expectedEndingCash // ignore: cast_nullable_to_non_nullable
              as int?,
      actualEndingCash: actualEndingCash == freezed
          ? _value.actualEndingCash
          : actualEndingCash // ignore: cast_nullable_to_non_nullable
              as int?,
      cashDifference: cashDifference == freezed
          ? _value.cashDifference
          : cashDifference // ignore: cast_nullable_to_non_nullable
              as int?,
      incomeCashManagementDetail: incomeCashManagementDetail == freezed
          ? _value.incomeCashManagementDetail
          : incomeCashManagementDetail // ignore: cast_nullable_to_non_nullable
              as List<OutcomeDetail>?,
      expense: expense == freezed
          ? _value.expense
          : expense // ignore: cast_nullable_to_non_nullable
              as List<OutcomeDetail>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CashManagementDetail implements _CashManagementDetail {
  const _$_CashManagementDetail(
      {@JsonKey(name: 'cash_payment') required this.cashPayment,
      @JsonKey(name: 'expected_ending_cash') required this.expectedEndingCash,
      @JsonKey(name: 'actual_ending_cash') required this.actualEndingCash,
      @JsonKey(name: 'cash_difference') required this.cashDifference,
      @JsonKey(name: 'income') required this.incomeCashManagementDetail,
      @JsonKey(name: 'expense') required this.expense});

  factory _$_CashManagementDetail.fromJson(Map<String, dynamic> json) =>
      _$$_CashManagementDetailFromJson(json);

  @override
  @JsonKey(name: 'cash_payment')
  final int? cashPayment;
  @override
  @JsonKey(name: 'expected_ending_cash')
  final int? expectedEndingCash;
  @override
  @JsonKey(name: 'actual_ending_cash')
  final int? actualEndingCash;
  @override
  @JsonKey(name: 'cash_difference')
  final int? cashDifference;
  @override
  @JsonKey(name: 'income')
  final List<OutcomeDetail>? incomeCashManagementDetail;
  @override
  @JsonKey(name: 'expense')
  final List<OutcomeDetail>? expense;

  @override
  String toString() {
    return 'CashManagementDetail(cashPayment: $cashPayment, expectedEndingCash: $expectedEndingCash, actualEndingCash: $actualEndingCash, cashDifference: $cashDifference, incomeCashManagementDetail: $incomeCashManagementDetail, expense: $expense)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CashManagementDetail &&
            const DeepCollectionEquality()
                .equals(other.cashPayment, cashPayment) &&
            const DeepCollectionEquality()
                .equals(other.expectedEndingCash, expectedEndingCash) &&
            const DeepCollectionEquality()
                .equals(other.actualEndingCash, actualEndingCash) &&
            const DeepCollectionEquality()
                .equals(other.cashDifference, cashDifference) &&
            const DeepCollectionEquality().equals(
                other.incomeCashManagementDetail, incomeCashManagementDetail) &&
            const DeepCollectionEquality().equals(other.expense, expense));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(cashPayment),
      const DeepCollectionEquality().hash(expectedEndingCash),
      const DeepCollectionEquality().hash(actualEndingCash),
      const DeepCollectionEquality().hash(cashDifference),
      const DeepCollectionEquality().hash(incomeCashManagementDetail),
      const DeepCollectionEquality().hash(expense));

  @JsonKey(ignore: true)
  @override
  _$CashManagementDetailCopyWith<_CashManagementDetail> get copyWith =>
      __$CashManagementDetailCopyWithImpl<_CashManagementDetail>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CashManagementDetailToJson(this);
  }
}

abstract class _CashManagementDetail implements CashManagementDetail {
  const factory _CashManagementDetail(
      {@JsonKey(name: 'cash_payment')
          required int? cashPayment,
      @JsonKey(name: 'expected_ending_cash')
          required int? expectedEndingCash,
      @JsonKey(name: 'actual_ending_cash')
          required int? actualEndingCash,
      @JsonKey(name: 'cash_difference')
          required int? cashDifference,
      @JsonKey(name: 'income')
          required List<OutcomeDetail>? incomeCashManagementDetail,
      @JsonKey(name: 'expense')
          required List<OutcomeDetail>? expense}) = _$_CashManagementDetail;

  factory _CashManagementDetail.fromJson(Map<String, dynamic> json) =
      _$_CashManagementDetail.fromJson;

  @override
  @JsonKey(name: 'cash_payment')
  int? get cashPayment;
  @override
  @JsonKey(name: 'expected_ending_cash')
  int? get expectedEndingCash;
  @override
  @JsonKey(name: 'actual_ending_cash')
  int? get actualEndingCash;
  @override
  @JsonKey(name: 'cash_difference')
  int? get cashDifference;
  @override
  @JsonKey(name: 'income')
  List<OutcomeDetail>? get incomeCashManagementDetail;
  @override
  @JsonKey(name: 'expense')
  List<OutcomeDetail>? get expense;
  @override
  @JsonKey(ignore: true)
  _$CashManagementDetailCopyWith<_CashManagementDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

PaymentDetail _$PaymentDetailFromJson(Map<String, dynamic> json) {
  return _PaymentDetail.fromJson(json);
}

/// @nodoc
class _$PaymentDetailTearOff {
  const _$PaymentDetailTearOff();

  _PaymentDetail call(
      {@JsonKey(name: 'cash_payment') required CashPayment? cashPayment,
      @JsonKey(name: 'edc_payment') required EdcPayment? edcPayment,
      @JsonKey(name: 'e_wallet') required EWallet? eWallet,
      @JsonKey(name: 'transfer') required int? transfer,
      required Overview? overview}) {
    return _PaymentDetail(
      cashPayment: cashPayment,
      edcPayment: edcPayment,
      eWallet: eWallet,
      transfer: transfer,
      overview: overview,
    );
  }

  PaymentDetail fromJson(Map<String, Object?> json) {
    return PaymentDetail.fromJson(json);
  }
}

/// @nodoc
const $PaymentDetail = _$PaymentDetailTearOff();

/// @nodoc
mixin _$PaymentDetail {
  @JsonKey(name: 'cash_payment')
  CashPayment? get cashPayment => throw _privateConstructorUsedError;
  @JsonKey(name: 'edc_payment')
  EdcPayment? get edcPayment => throw _privateConstructorUsedError;
  @JsonKey(name: 'e_wallet')
  EWallet? get eWallet => throw _privateConstructorUsedError;
  @JsonKey(name: 'transfer')
  int? get transfer => throw _privateConstructorUsedError;
  Overview? get overview => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaymentDetailCopyWith<PaymentDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentDetailCopyWith<$Res> {
  factory $PaymentDetailCopyWith(
          PaymentDetail value, $Res Function(PaymentDetail) then) =
      _$PaymentDetailCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'cash_payment') CashPayment? cashPayment,
      @JsonKey(name: 'edc_payment') EdcPayment? edcPayment,
      @JsonKey(name: 'e_wallet') EWallet? eWallet,
      @JsonKey(name: 'transfer') int? transfer,
      Overview? overview});

  $CashPaymentCopyWith<$Res>? get cashPayment;
  $EdcPaymentCopyWith<$Res>? get edcPayment;
  $EWalletCopyWith<$Res>? get eWallet;
  $OverviewCopyWith<$Res>? get overview;
}

/// @nodoc
class _$PaymentDetailCopyWithImpl<$Res>
    implements $PaymentDetailCopyWith<$Res> {
  _$PaymentDetailCopyWithImpl(this._value, this._then);

  final PaymentDetail _value;
  // ignore: unused_field
  final $Res Function(PaymentDetail) _then;

  @override
  $Res call({
    Object? cashPayment = freezed,
    Object? edcPayment = freezed,
    Object? eWallet = freezed,
    Object? transfer = freezed,
    Object? overview = freezed,
  }) {
    return _then(_value.copyWith(
      cashPayment: cashPayment == freezed
          ? _value.cashPayment
          : cashPayment // ignore: cast_nullable_to_non_nullable
              as CashPayment?,
      edcPayment: edcPayment == freezed
          ? _value.edcPayment
          : edcPayment // ignore: cast_nullable_to_non_nullable
              as EdcPayment?,
      eWallet: eWallet == freezed
          ? _value.eWallet
          : eWallet // ignore: cast_nullable_to_non_nullable
              as EWallet?,
      transfer: transfer == freezed
          ? _value.transfer
          : transfer // ignore: cast_nullable_to_non_nullable
              as int?,
      overview: overview == freezed
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as Overview?,
    ));
  }

  @override
  $CashPaymentCopyWith<$Res>? get cashPayment {
    if (_value.cashPayment == null) {
      return null;
    }

    return $CashPaymentCopyWith<$Res>(_value.cashPayment!, (value) {
      return _then(_value.copyWith(cashPayment: value));
    });
  }

  @override
  $EdcPaymentCopyWith<$Res>? get edcPayment {
    if (_value.edcPayment == null) {
      return null;
    }

    return $EdcPaymentCopyWith<$Res>(_value.edcPayment!, (value) {
      return _then(_value.copyWith(edcPayment: value));
    });
  }

  @override
  $EWalletCopyWith<$Res>? get eWallet {
    if (_value.eWallet == null) {
      return null;
    }

    return $EWalletCopyWith<$Res>(_value.eWallet!, (value) {
      return _then(_value.copyWith(eWallet: value));
    });
  }

  @override
  $OverviewCopyWith<$Res>? get overview {
    if (_value.overview == null) {
      return null;
    }

    return $OverviewCopyWith<$Res>(_value.overview!, (value) {
      return _then(_value.copyWith(overview: value));
    });
  }
}

/// @nodoc
abstract class _$PaymentDetailCopyWith<$Res>
    implements $PaymentDetailCopyWith<$Res> {
  factory _$PaymentDetailCopyWith(
          _PaymentDetail value, $Res Function(_PaymentDetail) then) =
      __$PaymentDetailCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'cash_payment') CashPayment? cashPayment,
      @JsonKey(name: 'edc_payment') EdcPayment? edcPayment,
      @JsonKey(name: 'e_wallet') EWallet? eWallet,
      @JsonKey(name: 'transfer') int? transfer,
      Overview? overview});

  @override
  $CashPaymentCopyWith<$Res>? get cashPayment;
  @override
  $EdcPaymentCopyWith<$Res>? get edcPayment;
  @override
  $EWalletCopyWith<$Res>? get eWallet;
  @override
  $OverviewCopyWith<$Res>? get overview;
}

/// @nodoc
class __$PaymentDetailCopyWithImpl<$Res>
    extends _$PaymentDetailCopyWithImpl<$Res>
    implements _$PaymentDetailCopyWith<$Res> {
  __$PaymentDetailCopyWithImpl(
      _PaymentDetail _value, $Res Function(_PaymentDetail) _then)
      : super(_value, (v) => _then(v as _PaymentDetail));

  @override
  _PaymentDetail get _value => super._value as _PaymentDetail;

  @override
  $Res call({
    Object? cashPayment = freezed,
    Object? edcPayment = freezed,
    Object? eWallet = freezed,
    Object? transfer = freezed,
    Object? overview = freezed,
  }) {
    return _then(_PaymentDetail(
      cashPayment: cashPayment == freezed
          ? _value.cashPayment
          : cashPayment // ignore: cast_nullable_to_non_nullable
              as CashPayment?,
      edcPayment: edcPayment == freezed
          ? _value.edcPayment
          : edcPayment // ignore: cast_nullable_to_non_nullable
              as EdcPayment?,
      eWallet: eWallet == freezed
          ? _value.eWallet
          : eWallet // ignore: cast_nullable_to_non_nullable
              as EWallet?,
      transfer: transfer == freezed
          ? _value.transfer
          : transfer // ignore: cast_nullable_to_non_nullable
              as int?,
      overview: overview == freezed
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as Overview?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PaymentDetail implements _PaymentDetail {
  const _$_PaymentDetail(
      {@JsonKey(name: 'cash_payment') required this.cashPayment,
      @JsonKey(name: 'edc_payment') required this.edcPayment,
      @JsonKey(name: 'e_wallet') required this.eWallet,
      @JsonKey(name: 'transfer') required this.transfer,
      required this.overview});

  factory _$_PaymentDetail.fromJson(Map<String, dynamic> json) =>
      _$$_PaymentDetailFromJson(json);

  @override
  @JsonKey(name: 'cash_payment')
  final CashPayment? cashPayment;
  @override
  @JsonKey(name: 'edc_payment')
  final EdcPayment? edcPayment;
  @override
  @JsonKey(name: 'e_wallet')
  final EWallet? eWallet;
  @override
  @JsonKey(name: 'transfer')
  final int? transfer;
  @override
  final Overview? overview;

  @override
  String toString() {
    return 'PaymentDetail(cashPayment: $cashPayment, edcPayment: $edcPayment, eWallet: $eWallet, transfer: $transfer, overview: $overview)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PaymentDetail &&
            const DeepCollectionEquality()
                .equals(other.cashPayment, cashPayment) &&
            const DeepCollectionEquality()
                .equals(other.edcPayment, edcPayment) &&
            const DeepCollectionEquality().equals(other.eWallet, eWallet) &&
            const DeepCollectionEquality().equals(other.transfer, transfer) &&
            const DeepCollectionEquality().equals(other.overview, overview));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(cashPayment),
      const DeepCollectionEquality().hash(edcPayment),
      const DeepCollectionEquality().hash(eWallet),
      const DeepCollectionEquality().hash(transfer),
      const DeepCollectionEquality().hash(overview));

  @JsonKey(ignore: true)
  @override
  _$PaymentDetailCopyWith<_PaymentDetail> get copyWith =>
      __$PaymentDetailCopyWithImpl<_PaymentDetail>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PaymentDetailToJson(this);
  }
}

abstract class _PaymentDetail implements PaymentDetail {
  const factory _PaymentDetail(
      {@JsonKey(name: 'cash_payment') required CashPayment? cashPayment,
      @JsonKey(name: 'edc_payment') required EdcPayment? edcPayment,
      @JsonKey(name: 'e_wallet') required EWallet? eWallet,
      @JsonKey(name: 'transfer') required int? transfer,
      required Overview? overview}) = _$_PaymentDetail;

  factory _PaymentDetail.fromJson(Map<String, dynamic> json) =
      _$_PaymentDetail.fromJson;

  @override
  @JsonKey(name: 'cash_payment')
  CashPayment? get cashPayment;
  @override
  @JsonKey(name: 'edc_payment')
  EdcPayment? get edcPayment;
  @override
  @JsonKey(name: 'e_wallet')
  EWallet? get eWallet;
  @override
  @JsonKey(name: 'transfer')
  int? get transfer;
  @override
  Overview? get overview;
  @override
  @JsonKey(ignore: true)
  _$PaymentDetailCopyWith<_PaymentDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

CashPayment _$CashPaymentFromJson(Map<String, dynamic> json) {
  return _CashPayment.fromJson(json);
}

/// @nodoc
class _$CashPaymentTearOff {
  const _$CashPaymentTearOff();

  _CashPayment call(
      {@JsonKey(name: 'cash_sales') required int? cashSales,
      @JsonKey(name: 'cash_refund') required int? cashRefund,
      required int? total}) {
    return _CashPayment(
      cashSales: cashSales,
      cashRefund: cashRefund,
      total: total,
    );
  }

  CashPayment fromJson(Map<String, Object?> json) {
    return CashPayment.fromJson(json);
  }
}

/// @nodoc
const $CashPayment = _$CashPaymentTearOff();

/// @nodoc
mixin _$CashPayment {
  @JsonKey(name: 'cash_sales')
  int? get cashSales => throw _privateConstructorUsedError;
  @JsonKey(name: 'cash_refund')
  int? get cashRefund => throw _privateConstructorUsedError;
  int? get total => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CashPaymentCopyWith<CashPayment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CashPaymentCopyWith<$Res> {
  factory $CashPaymentCopyWith(
          CashPayment value, $Res Function(CashPayment) then) =
      _$CashPaymentCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'cash_sales') int? cashSales,
      @JsonKey(name: 'cash_refund') int? cashRefund,
      int? total});
}

/// @nodoc
class _$CashPaymentCopyWithImpl<$Res> implements $CashPaymentCopyWith<$Res> {
  _$CashPaymentCopyWithImpl(this._value, this._then);

  final CashPayment _value;
  // ignore: unused_field
  final $Res Function(CashPayment) _then;

  @override
  $Res call({
    Object? cashSales = freezed,
    Object? cashRefund = freezed,
    Object? total = freezed,
  }) {
    return _then(_value.copyWith(
      cashSales: cashSales == freezed
          ? _value.cashSales
          : cashSales // ignore: cast_nullable_to_non_nullable
              as int?,
      cashRefund: cashRefund == freezed
          ? _value.cashRefund
          : cashRefund // ignore: cast_nullable_to_non_nullable
              as int?,
      total: total == freezed
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$CashPaymentCopyWith<$Res>
    implements $CashPaymentCopyWith<$Res> {
  factory _$CashPaymentCopyWith(
          _CashPayment value, $Res Function(_CashPayment) then) =
      __$CashPaymentCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'cash_sales') int? cashSales,
      @JsonKey(name: 'cash_refund') int? cashRefund,
      int? total});
}

/// @nodoc
class __$CashPaymentCopyWithImpl<$Res> extends _$CashPaymentCopyWithImpl<$Res>
    implements _$CashPaymentCopyWith<$Res> {
  __$CashPaymentCopyWithImpl(
      _CashPayment _value, $Res Function(_CashPayment) _then)
      : super(_value, (v) => _then(v as _CashPayment));

  @override
  _CashPayment get _value => super._value as _CashPayment;

  @override
  $Res call({
    Object? cashSales = freezed,
    Object? cashRefund = freezed,
    Object? total = freezed,
  }) {
    return _then(_CashPayment(
      cashSales: cashSales == freezed
          ? _value.cashSales
          : cashSales // ignore: cast_nullable_to_non_nullable
              as int?,
      cashRefund: cashRefund == freezed
          ? _value.cashRefund
          : cashRefund // ignore: cast_nullable_to_non_nullable
              as int?,
      total: total == freezed
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CashPayment implements _CashPayment {
  const _$_CashPayment(
      {@JsonKey(name: 'cash_sales') required this.cashSales,
      @JsonKey(name: 'cash_refund') required this.cashRefund,
      required this.total});

  factory _$_CashPayment.fromJson(Map<String, dynamic> json) =>
      _$$_CashPaymentFromJson(json);

  @override
  @JsonKey(name: 'cash_sales')
  final int? cashSales;
  @override
  @JsonKey(name: 'cash_refund')
  final int? cashRefund;
  @override
  final int? total;

  @override
  String toString() {
    return 'CashPayment(cashSales: $cashSales, cashRefund: $cashRefund, total: $total)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CashPayment &&
            const DeepCollectionEquality().equals(other.cashSales, cashSales) &&
            const DeepCollectionEquality()
                .equals(other.cashRefund, cashRefund) &&
            const DeepCollectionEquality().equals(other.total, total));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(cashSales),
      const DeepCollectionEquality().hash(cashRefund),
      const DeepCollectionEquality().hash(total));

  @JsonKey(ignore: true)
  @override
  _$CashPaymentCopyWith<_CashPayment> get copyWith =>
      __$CashPaymentCopyWithImpl<_CashPayment>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CashPaymentToJson(this);
  }
}

abstract class _CashPayment implements CashPayment {
  const factory _CashPayment(
      {@JsonKey(name: 'cash_sales') required int? cashSales,
      @JsonKey(name: 'cash_refund') required int? cashRefund,
      required int? total}) = _$_CashPayment;

  factory _CashPayment.fromJson(Map<String, dynamic> json) =
      _$_CashPayment.fromJson;

  @override
  @JsonKey(name: 'cash_sales')
  int? get cashSales;
  @override
  @JsonKey(name: 'cash_refund')
  int? get cashRefund;
  @override
  int? get total;
  @override
  @JsonKey(ignore: true)
  _$CashPaymentCopyWith<_CashPayment> get copyWith =>
      throw _privateConstructorUsedError;
}

EWallet _$EWalletFromJson(Map<String, dynamic> json) {
  return _EWallet.fromJson(json);
}

/// @nodoc
class _$EWalletTearOff {
  const _$EWalletTearOff();

  _EWallet call(
      {@JsonKey(name: 'shopee_pay') required int? shopeePay,
      required int? gopay,
      required int? dana,
      required int? qris,
      required int? ovo,
      required int? total}) {
    return _EWallet(
      shopeePay: shopeePay,
      gopay: gopay,
      dana: dana,
      qris: qris,
      ovo: ovo,
      total: total,
    );
  }

  EWallet fromJson(Map<String, Object?> json) {
    return EWallet.fromJson(json);
  }
}

/// @nodoc
const $EWallet = _$EWalletTearOff();

/// @nodoc
mixin _$EWallet {
  @JsonKey(name: 'shopee_pay')
  int? get shopeePay => throw _privateConstructorUsedError;
  int? get gopay => throw _privateConstructorUsedError;
  int? get dana => throw _privateConstructorUsedError;
  int? get qris => throw _privateConstructorUsedError;
  int? get ovo => throw _privateConstructorUsedError;
  int? get total => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EWalletCopyWith<EWallet> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EWalletCopyWith<$Res> {
  factory $EWalletCopyWith(EWallet value, $Res Function(EWallet) then) =
      _$EWalletCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'shopee_pay') int? shopeePay,
      int? gopay,
      int? dana,
      int? qris,
      int? ovo,
      int? total});
}

/// @nodoc
class _$EWalletCopyWithImpl<$Res> implements $EWalletCopyWith<$Res> {
  _$EWalletCopyWithImpl(this._value, this._then);

  final EWallet _value;
  // ignore: unused_field
  final $Res Function(EWallet) _then;

  @override
  $Res call({
    Object? shopeePay = freezed,
    Object? gopay = freezed,
    Object? dana = freezed,
    Object? qris = freezed,
    Object? ovo = freezed,
    Object? total = freezed,
  }) {
    return _then(_value.copyWith(
      shopeePay: shopeePay == freezed
          ? _value.shopeePay
          : shopeePay // ignore: cast_nullable_to_non_nullable
              as int?,
      gopay: gopay == freezed
          ? _value.gopay
          : gopay // ignore: cast_nullable_to_non_nullable
              as int?,
      dana: dana == freezed
          ? _value.dana
          : dana // ignore: cast_nullable_to_non_nullable
              as int?,
      qris: qris == freezed
          ? _value.qris
          : qris // ignore: cast_nullable_to_non_nullable
              as int?,
      ovo: ovo == freezed
          ? _value.ovo
          : ovo // ignore: cast_nullable_to_non_nullable
              as int?,
      total: total == freezed
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$EWalletCopyWith<$Res> implements $EWalletCopyWith<$Res> {
  factory _$EWalletCopyWith(_EWallet value, $Res Function(_EWallet) then) =
      __$EWalletCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'shopee_pay') int? shopeePay,
      int? gopay,
      int? dana,
      int? qris,
      int? ovo,
      int? total});
}

/// @nodoc
class __$EWalletCopyWithImpl<$Res> extends _$EWalletCopyWithImpl<$Res>
    implements _$EWalletCopyWith<$Res> {
  __$EWalletCopyWithImpl(_EWallet _value, $Res Function(_EWallet) _then)
      : super(_value, (v) => _then(v as _EWallet));

  @override
  _EWallet get _value => super._value as _EWallet;

  @override
  $Res call({
    Object? shopeePay = freezed,
    Object? gopay = freezed,
    Object? dana = freezed,
    Object? qris = freezed,
    Object? ovo = freezed,
    Object? total = freezed,
  }) {
    return _then(_EWallet(
      shopeePay: shopeePay == freezed
          ? _value.shopeePay
          : shopeePay // ignore: cast_nullable_to_non_nullable
              as int?,
      gopay: gopay == freezed
          ? _value.gopay
          : gopay // ignore: cast_nullable_to_non_nullable
              as int?,
      dana: dana == freezed
          ? _value.dana
          : dana // ignore: cast_nullable_to_non_nullable
              as int?,
      qris: qris == freezed
          ? _value.qris
          : qris // ignore: cast_nullable_to_non_nullable
              as int?,
      ovo: ovo == freezed
          ? _value.ovo
          : ovo // ignore: cast_nullable_to_non_nullable
              as int?,
      total: total == freezed
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_EWallet implements _EWallet {
  const _$_EWallet(
      {@JsonKey(name: 'shopee_pay') required this.shopeePay,
      required this.gopay,
      required this.dana,
      required this.qris,
      required this.ovo,
      required this.total});

  factory _$_EWallet.fromJson(Map<String, dynamic> json) =>
      _$$_EWalletFromJson(json);

  @override
  @JsonKey(name: 'shopee_pay')
  final int? shopeePay;
  @override
  final int? gopay;
  @override
  final int? dana;
  @override
  final int? qris;
  @override
  final int? ovo;
  @override
  final int? total;

  @override
  String toString() {
    return 'EWallet(shopeePay: $shopeePay, gopay: $gopay, dana: $dana, qris: $qris, ovo: $ovo, total: $total)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _EWallet &&
            const DeepCollectionEquality().equals(other.shopeePay, shopeePay) &&
            const DeepCollectionEquality().equals(other.gopay, gopay) &&
            const DeepCollectionEquality().equals(other.dana, dana) &&
            const DeepCollectionEquality().equals(other.qris, qris) &&
            const DeepCollectionEquality().equals(other.ovo, ovo) &&
            const DeepCollectionEquality().equals(other.total, total));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(shopeePay),
      const DeepCollectionEquality().hash(gopay),
      const DeepCollectionEquality().hash(dana),
      const DeepCollectionEquality().hash(qris),
      const DeepCollectionEquality().hash(ovo),
      const DeepCollectionEquality().hash(total));

  @JsonKey(ignore: true)
  @override
  _$EWalletCopyWith<_EWallet> get copyWith =>
      __$EWalletCopyWithImpl<_EWallet>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EWalletToJson(this);
  }
}

abstract class _EWallet implements EWallet {
  const factory _EWallet(
      {@JsonKey(name: 'shopee_pay') required int? shopeePay,
      required int? gopay,
      required int? dana,
      required int? qris,
      required int? ovo,
      required int? total}) = _$_EWallet;

  factory _EWallet.fromJson(Map<String, dynamic> json) = _$_EWallet.fromJson;

  @override
  @JsonKey(name: 'shopee_pay')
  int? get shopeePay;
  @override
  int? get gopay;
  @override
  int? get dana;
  @override
  int? get qris;
  @override
  int? get ovo;
  @override
  int? get total;
  @override
  @JsonKey(ignore: true)
  _$EWalletCopyWith<_EWallet> get copyWith =>
      throw _privateConstructorUsedError;
}

EdcPayment _$EdcPaymentFromJson(Map<String, dynamic> json) {
  return _EdcPayment.fromJson(json);
}

/// @nodoc
class _$EdcPaymentTearOff {
  const _$EdcPaymentTearOff();

  _EdcPayment call(
      {required int? bca,
      required int? mandiri,
      required int? bri,
      required int? bni,
      required int? refund,
      required int? total}) {
    return _EdcPayment(
      bca: bca,
      mandiri: mandiri,
      bri: bri,
      bni: bni,
      refund: refund,
      total: total,
    );
  }

  EdcPayment fromJson(Map<String, Object?> json) {
    return EdcPayment.fromJson(json);
  }
}

/// @nodoc
const $EdcPayment = _$EdcPaymentTearOff();

/// @nodoc
mixin _$EdcPayment {
  int? get bca => throw _privateConstructorUsedError;
  int? get mandiri => throw _privateConstructorUsedError;
  int? get bri => throw _privateConstructorUsedError;
  int? get bni => throw _privateConstructorUsedError;
  int? get refund => throw _privateConstructorUsedError;
  int? get total => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EdcPaymentCopyWith<EdcPayment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EdcPaymentCopyWith<$Res> {
  factory $EdcPaymentCopyWith(
          EdcPayment value, $Res Function(EdcPayment) then) =
      _$EdcPaymentCopyWithImpl<$Res>;
  $Res call(
      {int? bca, int? mandiri, int? bri, int? bni, int? refund, int? total});
}

/// @nodoc
class _$EdcPaymentCopyWithImpl<$Res> implements $EdcPaymentCopyWith<$Res> {
  _$EdcPaymentCopyWithImpl(this._value, this._then);

  final EdcPayment _value;
  // ignore: unused_field
  final $Res Function(EdcPayment) _then;

  @override
  $Res call({
    Object? bca = freezed,
    Object? mandiri = freezed,
    Object? bri = freezed,
    Object? bni = freezed,
    Object? refund = freezed,
    Object? total = freezed,
  }) {
    return _then(_value.copyWith(
      bca: bca == freezed
          ? _value.bca
          : bca // ignore: cast_nullable_to_non_nullable
              as int?,
      mandiri: mandiri == freezed
          ? _value.mandiri
          : mandiri // ignore: cast_nullable_to_non_nullable
              as int?,
      bri: bri == freezed
          ? _value.bri
          : bri // ignore: cast_nullable_to_non_nullable
              as int?,
      bni: bni == freezed
          ? _value.bni
          : bni // ignore: cast_nullable_to_non_nullable
              as int?,
      refund: refund == freezed
          ? _value.refund
          : refund // ignore: cast_nullable_to_non_nullable
              as int?,
      total: total == freezed
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$EdcPaymentCopyWith<$Res> implements $EdcPaymentCopyWith<$Res> {
  factory _$EdcPaymentCopyWith(
          _EdcPayment value, $Res Function(_EdcPayment) then) =
      __$EdcPaymentCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? bca, int? mandiri, int? bri, int? bni, int? refund, int? total});
}

/// @nodoc
class __$EdcPaymentCopyWithImpl<$Res> extends _$EdcPaymentCopyWithImpl<$Res>
    implements _$EdcPaymentCopyWith<$Res> {
  __$EdcPaymentCopyWithImpl(
      _EdcPayment _value, $Res Function(_EdcPayment) _then)
      : super(_value, (v) => _then(v as _EdcPayment));

  @override
  _EdcPayment get _value => super._value as _EdcPayment;

  @override
  $Res call({
    Object? bca = freezed,
    Object? mandiri = freezed,
    Object? bri = freezed,
    Object? bni = freezed,
    Object? refund = freezed,
    Object? total = freezed,
  }) {
    return _then(_EdcPayment(
      bca: bca == freezed
          ? _value.bca
          : bca // ignore: cast_nullable_to_non_nullable
              as int?,
      mandiri: mandiri == freezed
          ? _value.mandiri
          : mandiri // ignore: cast_nullable_to_non_nullable
              as int?,
      bri: bri == freezed
          ? _value.bri
          : bri // ignore: cast_nullable_to_non_nullable
              as int?,
      bni: bni == freezed
          ? _value.bni
          : bni // ignore: cast_nullable_to_non_nullable
              as int?,
      refund: refund == freezed
          ? _value.refund
          : refund // ignore: cast_nullable_to_non_nullable
              as int?,
      total: total == freezed
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_EdcPayment implements _EdcPayment {
  const _$_EdcPayment(
      {required this.bca,
      required this.mandiri,
      required this.bri,
      required this.bni,
      required this.refund,
      required this.total});

  factory _$_EdcPayment.fromJson(Map<String, dynamic> json) =>
      _$$_EdcPaymentFromJson(json);

  @override
  final int? bca;
  @override
  final int? mandiri;
  @override
  final int? bri;
  @override
  final int? bni;
  @override
  final int? refund;
  @override
  final int? total;

  @override
  String toString() {
    return 'EdcPayment(bca: $bca, mandiri: $mandiri, bri: $bri, bni: $bni, refund: $refund, total: $total)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _EdcPayment &&
            const DeepCollectionEquality().equals(other.bca, bca) &&
            const DeepCollectionEquality().equals(other.mandiri, mandiri) &&
            const DeepCollectionEquality().equals(other.bri, bri) &&
            const DeepCollectionEquality().equals(other.bni, bni) &&
            const DeepCollectionEquality().equals(other.refund, refund) &&
            const DeepCollectionEquality().equals(other.total, total));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(bca),
      const DeepCollectionEquality().hash(mandiri),
      const DeepCollectionEquality().hash(bri),
      const DeepCollectionEquality().hash(bni),
      const DeepCollectionEquality().hash(refund),
      const DeepCollectionEquality().hash(total));

  @JsonKey(ignore: true)
  @override
  _$EdcPaymentCopyWith<_EdcPayment> get copyWith =>
      __$EdcPaymentCopyWithImpl<_EdcPayment>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EdcPaymentToJson(this);
  }
}

abstract class _EdcPayment implements EdcPayment {
  const factory _EdcPayment(
      {required int? bca,
      required int? mandiri,
      required int? bri,
      required int? bni,
      required int? refund,
      required int? total}) = _$_EdcPayment;

  factory _EdcPayment.fromJson(Map<String, dynamic> json) =
      _$_EdcPayment.fromJson;

  @override
  int? get bca;
  @override
  int? get mandiri;
  @override
  int? get bri;
  @override
  int? get bni;
  @override
  int? get refund;
  @override
  int? get total;
  @override
  @JsonKey(ignore: true)
  _$EdcPaymentCopyWith<_EdcPayment> get copyWith =>
      throw _privateConstructorUsedError;
}

Overview _$OverviewFromJson(Map<String, dynamic> json) {
  return _Overview.fromJson(json);
}

/// @nodoc
class _$OverviewTearOff {
  const _$OverviewTearOff();

  _Overview call(
      {required int? income, required int? outcome, required int? total}) {
    return _Overview(
      income: income,
      outcome: outcome,
      total: total,
    );
  }

  Overview fromJson(Map<String, Object?> json) {
    return Overview.fromJson(json);
  }
}

/// @nodoc
const $Overview = _$OverviewTearOff();

/// @nodoc
mixin _$Overview {
  int? get income => throw _privateConstructorUsedError;
  int? get outcome => throw _privateConstructorUsedError;
  int? get total => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OverviewCopyWith<Overview> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OverviewCopyWith<$Res> {
  factory $OverviewCopyWith(Overview value, $Res Function(Overview) then) =
      _$OverviewCopyWithImpl<$Res>;
  $Res call({int? income, int? outcome, int? total});
}

/// @nodoc
class _$OverviewCopyWithImpl<$Res> implements $OverviewCopyWith<$Res> {
  _$OverviewCopyWithImpl(this._value, this._then);

  final Overview _value;
  // ignore: unused_field
  final $Res Function(Overview) _then;

  @override
  $Res call({
    Object? income = freezed,
    Object? outcome = freezed,
    Object? total = freezed,
  }) {
    return _then(_value.copyWith(
      income: income == freezed
          ? _value.income
          : income // ignore: cast_nullable_to_non_nullable
              as int?,
      outcome: outcome == freezed
          ? _value.outcome
          : outcome // ignore: cast_nullable_to_non_nullable
              as int?,
      total: total == freezed
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$OverviewCopyWith<$Res> implements $OverviewCopyWith<$Res> {
  factory _$OverviewCopyWith(_Overview value, $Res Function(_Overview) then) =
      __$OverviewCopyWithImpl<$Res>;
  @override
  $Res call({int? income, int? outcome, int? total});
}

/// @nodoc
class __$OverviewCopyWithImpl<$Res> extends _$OverviewCopyWithImpl<$Res>
    implements _$OverviewCopyWith<$Res> {
  __$OverviewCopyWithImpl(_Overview _value, $Res Function(_Overview) _then)
      : super(_value, (v) => _then(v as _Overview));

  @override
  _Overview get _value => super._value as _Overview;

  @override
  $Res call({
    Object? income = freezed,
    Object? outcome = freezed,
    Object? total = freezed,
  }) {
    return _then(_Overview(
      income: income == freezed
          ? _value.income
          : income // ignore: cast_nullable_to_non_nullable
              as int?,
      outcome: outcome == freezed
          ? _value.outcome
          : outcome // ignore: cast_nullable_to_non_nullable
              as int?,
      total: total == freezed
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Overview implements _Overview {
  const _$_Overview(
      {required this.income, required this.outcome, required this.total});

  factory _$_Overview.fromJson(Map<String, dynamic> json) =>
      _$$_OverviewFromJson(json);

  @override
  final int? income;
  @override
  final int? outcome;
  @override
  final int? total;

  @override
  String toString() {
    return 'Overview(income: $income, outcome: $outcome, total: $total)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Overview &&
            const DeepCollectionEquality().equals(other.income, income) &&
            const DeepCollectionEquality().equals(other.outcome, outcome) &&
            const DeepCollectionEquality().equals(other.total, total));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(income),
      const DeepCollectionEquality().hash(outcome),
      const DeepCollectionEquality().hash(total));

  @JsonKey(ignore: true)
  @override
  _$OverviewCopyWith<_Overview> get copyWith =>
      __$OverviewCopyWithImpl<_Overview>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OverviewToJson(this);
  }
}

abstract class _Overview implements Overview {
  const factory _Overview(
      {required int? income,
      required int? outcome,
      required int? total}) = _$_Overview;

  factory _Overview.fromJson(Map<String, dynamic> json) = _$_Overview.fromJson;

  @override
  int? get income;
  @override
  int? get outcome;
  @override
  int? get total;
  @override
  @JsonKey(ignore: true)
  _$OverviewCopyWith<_Overview> get copyWith =>
      throw _privateConstructorUsedError;
}

ShiftPrint _$ShiftPrintFromJson(Map<String, dynamic> json) {
  return _ShiftPrint.fromJson(json);
}

/// @nodoc
class _$ShiftPrintTearOff {
  const _$ShiftPrintTearOff();

  _ShiftPrint call(
      {@JsonKey(name: 'start_date') required DateTime? startDate,
      @JsonKey(name: 'end_date') required DateTime? endDate,
      @JsonKey(name: 'sold_items') required String? soldItems,
      @JsonKey(name: 'refund_items') required String? refundItems,
      String? address,
      required String? kasir}) {
    return _ShiftPrint(
      startDate: startDate,
      endDate: endDate,
      soldItems: soldItems,
      refundItems: refundItems,
      address: address,
      kasir: kasir,
    );
  }

  ShiftPrint fromJson(Map<String, Object?> json) {
    return ShiftPrint.fromJson(json);
  }
}

/// @nodoc
const $ShiftPrint = _$ShiftPrintTearOff();

/// @nodoc
mixin _$ShiftPrint {
  @JsonKey(name: 'start_date')
  DateTime? get startDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'end_date')
  DateTime? get endDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'sold_items')
  String? get soldItems => throw _privateConstructorUsedError;
  @JsonKey(name: 'refund_items')
  String? get refundItems => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;
  String? get kasir => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ShiftPrintCopyWith<ShiftPrint> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShiftPrintCopyWith<$Res> {
  factory $ShiftPrintCopyWith(
          ShiftPrint value, $Res Function(ShiftPrint) then) =
      _$ShiftPrintCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'start_date') DateTime? startDate,
      @JsonKey(name: 'end_date') DateTime? endDate,
      @JsonKey(name: 'sold_items') String? soldItems,
      @JsonKey(name: 'refund_items') String? refundItems,
      String? address,
      String? kasir});
}

/// @nodoc
class _$ShiftPrintCopyWithImpl<$Res> implements $ShiftPrintCopyWith<$Res> {
  _$ShiftPrintCopyWithImpl(this._value, this._then);

  final ShiftPrint _value;
  // ignore: unused_field
  final $Res Function(ShiftPrint) _then;

  @override
  $Res call({
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? soldItems = freezed,
    Object? refundItems = freezed,
    Object? address = freezed,
    Object? kasir = freezed,
  }) {
    return _then(_value.copyWith(
      startDate: startDate == freezed
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endDate: endDate == freezed
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      soldItems: soldItems == freezed
          ? _value.soldItems
          : soldItems // ignore: cast_nullable_to_non_nullable
              as String?,
      refundItems: refundItems == freezed
          ? _value.refundItems
          : refundItems // ignore: cast_nullable_to_non_nullable
              as String?,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      kasir: kasir == freezed
          ? _value.kasir
          : kasir // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$ShiftPrintCopyWith<$Res> implements $ShiftPrintCopyWith<$Res> {
  factory _$ShiftPrintCopyWith(
          _ShiftPrint value, $Res Function(_ShiftPrint) then) =
      __$ShiftPrintCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'start_date') DateTime? startDate,
      @JsonKey(name: 'end_date') DateTime? endDate,
      @JsonKey(name: 'sold_items') String? soldItems,
      @JsonKey(name: 'refund_items') String? refundItems,
      String? address,
      String? kasir});
}

/// @nodoc
class __$ShiftPrintCopyWithImpl<$Res> extends _$ShiftPrintCopyWithImpl<$Res>
    implements _$ShiftPrintCopyWith<$Res> {
  __$ShiftPrintCopyWithImpl(
      _ShiftPrint _value, $Res Function(_ShiftPrint) _then)
      : super(_value, (v) => _then(v as _ShiftPrint));

  @override
  _ShiftPrint get _value => super._value as _ShiftPrint;

  @override
  $Res call({
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? soldItems = freezed,
    Object? refundItems = freezed,
    Object? address = freezed,
    Object? kasir = freezed,
  }) {
    return _then(_ShiftPrint(
      startDate: startDate == freezed
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endDate: endDate == freezed
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      soldItems: soldItems == freezed
          ? _value.soldItems
          : soldItems // ignore: cast_nullable_to_non_nullable
              as String?,
      refundItems: refundItems == freezed
          ? _value.refundItems
          : refundItems // ignore: cast_nullable_to_non_nullable
              as String?,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      kasir: kasir == freezed
          ? _value.kasir
          : kasir // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ShiftPrint implements _ShiftPrint {
  const _$_ShiftPrint(
      {@JsonKey(name: 'start_date') required this.startDate,
      @JsonKey(name: 'end_date') required this.endDate,
      @JsonKey(name: 'sold_items') required this.soldItems,
      @JsonKey(name: 'refund_items') required this.refundItems,
      this.address,
      required this.kasir});

  factory _$_ShiftPrint.fromJson(Map<String, dynamic> json) =>
      _$$_ShiftPrintFromJson(json);

  @override
  @JsonKey(name: 'start_date')
  final DateTime? startDate;
  @override
  @JsonKey(name: 'end_date')
  final DateTime? endDate;
  @override
  @JsonKey(name: 'sold_items')
  final String? soldItems;
  @override
  @JsonKey(name: 'refund_items')
  final String? refundItems;
  @override
  final String? address;
  @override
  final String? kasir;

  @override
  String toString() {
    return 'ShiftPrint(startDate: $startDate, endDate: $endDate, soldItems: $soldItems, refundItems: $refundItems, address: $address, kasir: $kasir)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ShiftPrint &&
            const DeepCollectionEquality().equals(other.startDate, startDate) &&
            const DeepCollectionEquality().equals(other.endDate, endDate) &&
            const DeepCollectionEquality().equals(other.soldItems, soldItems) &&
            const DeepCollectionEquality()
                .equals(other.refundItems, refundItems) &&
            const DeepCollectionEquality().equals(other.address, address) &&
            const DeepCollectionEquality().equals(other.kasir, kasir));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(startDate),
      const DeepCollectionEquality().hash(endDate),
      const DeepCollectionEquality().hash(soldItems),
      const DeepCollectionEquality().hash(refundItems),
      const DeepCollectionEquality().hash(address),
      const DeepCollectionEquality().hash(kasir));

  @JsonKey(ignore: true)
  @override
  _$ShiftPrintCopyWith<_ShiftPrint> get copyWith =>
      __$ShiftPrintCopyWithImpl<_ShiftPrint>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ShiftPrintToJson(this);
  }
}

abstract class _ShiftPrint implements ShiftPrint {
  const factory _ShiftPrint(
      {@JsonKey(name: 'start_date') required DateTime? startDate,
      @JsonKey(name: 'end_date') required DateTime? endDate,
      @JsonKey(name: 'sold_items') required String? soldItems,
      @JsonKey(name: 'refund_items') required String? refundItems,
      String? address,
      required String? kasir}) = _$_ShiftPrint;

  factory _ShiftPrint.fromJson(Map<String, dynamic> json) =
      _$_ShiftPrint.fromJson;

  @override
  @JsonKey(name: 'start_date')
  DateTime? get startDate;
  @override
  @JsonKey(name: 'end_date')
  DateTime? get endDate;
  @override
  @JsonKey(name: 'sold_items')
  String? get soldItems;
  @override
  @JsonKey(name: 'refund_items')
  String? get refundItems;
  @override
  String? get address;
  @override
  String? get kasir;
  @override
  @JsonKey(ignore: true)
  _$ShiftPrintCopyWith<_ShiftPrint> get copyWith =>
      throw _privateConstructorUsedError;
}

TransactionDetail _$TransactionDetailFromJson(Map<String, dynamic> json) {
  return _TransactionDetail.fromJson(json);
}

/// @nodoc
class _$TransactionDetailTearOff {
  const _$TransactionDetailTearOff();

  _TransactionDetail call(
      {@JsonKey(name: 'nama_barang') required String? namaBarang,
      required int? qty,
      required int? harga,
      required int? total}) {
    return _TransactionDetail(
      namaBarang: namaBarang,
      qty: qty,
      harga: harga,
      total: total,
    );
  }

  TransactionDetail fromJson(Map<String, Object?> json) {
    return TransactionDetail.fromJson(json);
  }
}

/// @nodoc
const $TransactionDetail = _$TransactionDetailTearOff();

/// @nodoc
mixin _$TransactionDetail {
  @JsonKey(name: 'nama_barang')
  String? get namaBarang => throw _privateConstructorUsedError;
  int? get qty => throw _privateConstructorUsedError;
  int? get harga => throw _privateConstructorUsedError;
  int? get total => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TransactionDetailCopyWith<TransactionDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionDetailCopyWith<$Res> {
  factory $TransactionDetailCopyWith(
          TransactionDetail value, $Res Function(TransactionDetail) then) =
      _$TransactionDetailCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'nama_barang') String? namaBarang,
      int? qty,
      int? harga,
      int? total});
}

/// @nodoc
class _$TransactionDetailCopyWithImpl<$Res>
    implements $TransactionDetailCopyWith<$Res> {
  _$TransactionDetailCopyWithImpl(this._value, this._then);

  final TransactionDetail _value;
  // ignore: unused_field
  final $Res Function(TransactionDetail) _then;

  @override
  $Res call({
    Object? namaBarang = freezed,
    Object? qty = freezed,
    Object? harga = freezed,
    Object? total = freezed,
  }) {
    return _then(_value.copyWith(
      namaBarang: namaBarang == freezed
          ? _value.namaBarang
          : namaBarang // ignore: cast_nullable_to_non_nullable
              as String?,
      qty: qty == freezed
          ? _value.qty
          : qty // ignore: cast_nullable_to_non_nullable
              as int?,
      harga: harga == freezed
          ? _value.harga
          : harga // ignore: cast_nullable_to_non_nullable
              as int?,
      total: total == freezed
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$TransactionDetailCopyWith<$Res>
    implements $TransactionDetailCopyWith<$Res> {
  factory _$TransactionDetailCopyWith(
          _TransactionDetail value, $Res Function(_TransactionDetail) then) =
      __$TransactionDetailCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'nama_barang') String? namaBarang,
      int? qty,
      int? harga,
      int? total});
}

/// @nodoc
class __$TransactionDetailCopyWithImpl<$Res>
    extends _$TransactionDetailCopyWithImpl<$Res>
    implements _$TransactionDetailCopyWith<$Res> {
  __$TransactionDetailCopyWithImpl(
      _TransactionDetail _value, $Res Function(_TransactionDetail) _then)
      : super(_value, (v) => _then(v as _TransactionDetail));

  @override
  _TransactionDetail get _value => super._value as _TransactionDetail;

  @override
  $Res call({
    Object? namaBarang = freezed,
    Object? qty = freezed,
    Object? harga = freezed,
    Object? total = freezed,
  }) {
    return _then(_TransactionDetail(
      namaBarang: namaBarang == freezed
          ? _value.namaBarang
          : namaBarang // ignore: cast_nullable_to_non_nullable
              as String?,
      qty: qty == freezed
          ? _value.qty
          : qty // ignore: cast_nullable_to_non_nullable
              as int?,
      harga: harga == freezed
          ? _value.harga
          : harga // ignore: cast_nullable_to_non_nullable
              as int?,
      total: total == freezed
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TransactionDetail implements _TransactionDetail {
  const _$_TransactionDetail(
      {@JsonKey(name: 'nama_barang') required this.namaBarang,
      required this.qty,
      required this.harga,
      required this.total});

  factory _$_TransactionDetail.fromJson(Map<String, dynamic> json) =>
      _$$_TransactionDetailFromJson(json);

  @override
  @JsonKey(name: 'nama_barang')
  final String? namaBarang;
  @override
  final int? qty;
  @override
  final int? harga;
  @override
  final int? total;

  @override
  String toString() {
    return 'TransactionDetail(namaBarang: $namaBarang, qty: $qty, harga: $harga, total: $total)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TransactionDetail &&
            const DeepCollectionEquality()
                .equals(other.namaBarang, namaBarang) &&
            const DeepCollectionEquality().equals(other.qty, qty) &&
            const DeepCollectionEquality().equals(other.harga, harga) &&
            const DeepCollectionEquality().equals(other.total, total));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(namaBarang),
      const DeepCollectionEquality().hash(qty),
      const DeepCollectionEquality().hash(harga),
      const DeepCollectionEquality().hash(total));

  @JsonKey(ignore: true)
  @override
  _$TransactionDetailCopyWith<_TransactionDetail> get copyWith =>
      __$TransactionDetailCopyWithImpl<_TransactionDetail>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TransactionDetailToJson(this);
  }
}

abstract class _TransactionDetail implements TransactionDetail {
  const factory _TransactionDetail(
      {@JsonKey(name: 'nama_barang') required String? namaBarang,
      required int? qty,
      required int? harga,
      required int? total}) = _$_TransactionDetail;

  factory _TransactionDetail.fromJson(Map<String, dynamic> json) =
      _$_TransactionDetail.fromJson;

  @override
  @JsonKey(name: 'nama_barang')
  String? get namaBarang;
  @override
  int? get qty;
  @override
  int? get harga;
  @override
  int? get total;
  @override
  @JsonKey(ignore: true)
  _$TransactionDetailCopyWith<_TransactionDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

RefundedItem _$RefundedItemFromJson(Map<String, dynamic> json) {
  return _RefundedItem.fromJson(json);
}

/// @nodoc
class _$RefundedItemTearOff {
  const _$RefundedItemTearOff();

  _RefundedItem call(
      {@JsonKey(name: 'nama_barang') required String? namaBarang,
      @JsonKey(name: 'order_category') required String? orderCategory,
      required int? qty,
      required int? harga,
      required int? total}) {
    return _RefundedItem(
      namaBarang: namaBarang,
      orderCategory: orderCategory,
      qty: qty,
      harga: harga,
      total: total,
    );
  }

  RefundedItem fromJson(Map<String, Object?> json) {
    return RefundedItem.fromJson(json);
  }
}

/// @nodoc
const $RefundedItem = _$RefundedItemTearOff();

/// @nodoc
mixin _$RefundedItem {
  @JsonKey(name: 'nama_barang')
  String? get namaBarang => throw _privateConstructorUsedError;
  @JsonKey(name: 'order_category')
  String? get orderCategory => throw _privateConstructorUsedError;
  int? get qty => throw _privateConstructorUsedError;
  int? get harga => throw _privateConstructorUsedError;
  int? get total => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RefundedItemCopyWith<RefundedItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RefundedItemCopyWith<$Res> {
  factory $RefundedItemCopyWith(
          RefundedItem value, $Res Function(RefundedItem) then) =
      _$RefundedItemCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'nama_barang') String? namaBarang,
      @JsonKey(name: 'order_category') String? orderCategory,
      int? qty,
      int? harga,
      int? total});
}

/// @nodoc
class _$RefundedItemCopyWithImpl<$Res> implements $RefundedItemCopyWith<$Res> {
  _$RefundedItemCopyWithImpl(this._value, this._then);

  final RefundedItem _value;
  // ignore: unused_field
  final $Res Function(RefundedItem) _then;

  @override
  $Res call({
    Object? namaBarang = freezed,
    Object? orderCategory = freezed,
    Object? qty = freezed,
    Object? harga = freezed,
    Object? total = freezed,
  }) {
    return _then(_value.copyWith(
      namaBarang: namaBarang == freezed
          ? _value.namaBarang
          : namaBarang // ignore: cast_nullable_to_non_nullable
              as String?,
      orderCategory: orderCategory == freezed
          ? _value.orderCategory
          : orderCategory // ignore: cast_nullable_to_non_nullable
              as String?,
      qty: qty == freezed
          ? _value.qty
          : qty // ignore: cast_nullable_to_non_nullable
              as int?,
      harga: harga == freezed
          ? _value.harga
          : harga // ignore: cast_nullable_to_non_nullable
              as int?,
      total: total == freezed
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$RefundedItemCopyWith<$Res>
    implements $RefundedItemCopyWith<$Res> {
  factory _$RefundedItemCopyWith(
          _RefundedItem value, $Res Function(_RefundedItem) then) =
      __$RefundedItemCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'nama_barang') String? namaBarang,
      @JsonKey(name: 'order_category') String? orderCategory,
      int? qty,
      int? harga,
      int? total});
}

/// @nodoc
class __$RefundedItemCopyWithImpl<$Res> extends _$RefundedItemCopyWithImpl<$Res>
    implements _$RefundedItemCopyWith<$Res> {
  __$RefundedItemCopyWithImpl(
      _RefundedItem _value, $Res Function(_RefundedItem) _then)
      : super(_value, (v) => _then(v as _RefundedItem));

  @override
  _RefundedItem get _value => super._value as _RefundedItem;

  @override
  $Res call({
    Object? namaBarang = freezed,
    Object? orderCategory = freezed,
    Object? qty = freezed,
    Object? harga = freezed,
    Object? total = freezed,
  }) {
    return _then(_RefundedItem(
      namaBarang: namaBarang == freezed
          ? _value.namaBarang
          : namaBarang // ignore: cast_nullable_to_non_nullable
              as String?,
      orderCategory: orderCategory == freezed
          ? _value.orderCategory
          : orderCategory // ignore: cast_nullable_to_non_nullable
              as String?,
      qty: qty == freezed
          ? _value.qty
          : qty // ignore: cast_nullable_to_non_nullable
              as int?,
      harga: harga == freezed
          ? _value.harga
          : harga // ignore: cast_nullable_to_non_nullable
              as int?,
      total: total == freezed
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RefundedItem implements _RefundedItem {
  const _$_RefundedItem(
      {@JsonKey(name: 'nama_barang') required this.namaBarang,
      @JsonKey(name: 'order_category') required this.orderCategory,
      required this.qty,
      required this.harga,
      required this.total});

  factory _$_RefundedItem.fromJson(Map<String, dynamic> json) =>
      _$$_RefundedItemFromJson(json);

  @override
  @JsonKey(name: 'nama_barang')
  final String? namaBarang;
  @override
  @JsonKey(name: 'order_category')
  final String? orderCategory;
  @override
  final int? qty;
  @override
  final int? harga;
  @override
  final int? total;

  @override
  String toString() {
    return 'RefundedItem(namaBarang: $namaBarang, orderCategory: $orderCategory, qty: $qty, harga: $harga, total: $total)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RefundedItem &&
            const DeepCollectionEquality()
                .equals(other.namaBarang, namaBarang) &&
            const DeepCollectionEquality()
                .equals(other.orderCategory, orderCategory) &&
            const DeepCollectionEquality().equals(other.qty, qty) &&
            const DeepCollectionEquality().equals(other.harga, harga) &&
            const DeepCollectionEquality().equals(other.total, total));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(namaBarang),
      const DeepCollectionEquality().hash(orderCategory),
      const DeepCollectionEquality().hash(qty),
      const DeepCollectionEquality().hash(harga),
      const DeepCollectionEquality().hash(total));

  @JsonKey(ignore: true)
  @override
  _$RefundedItemCopyWith<_RefundedItem> get copyWith =>
      __$RefundedItemCopyWithImpl<_RefundedItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RefundedItemToJson(this);
  }
}

abstract class _RefundedItem implements RefundedItem {
  const factory _RefundedItem(
      {@JsonKey(name: 'nama_barang') required String? namaBarang,
      @JsonKey(name: 'order_category') required String? orderCategory,
      required int? qty,
      required int? harga,
      required int? total}) = _$_RefundedItem;

  factory _RefundedItem.fromJson(Map<String, dynamic> json) =
      _$_RefundedItem.fromJson;

  @override
  @JsonKey(name: 'nama_barang')
  String? get namaBarang;
  @override
  @JsonKey(name: 'order_category')
  String? get orderCategory;
  @override
  int? get qty;
  @override
  int? get harga;
  @override
  int? get total;
  @override
  @JsonKey(ignore: true)
  _$RefundedItemCopyWith<_RefundedItem> get copyWith =>
      throw _privateConstructorUsedError;
}

OutcomeDetail _$OutcomeDetailFromJson(Map<String, dynamic> json) {
  return _OutcomeDetail.fromJson(json);
}

/// @nodoc
class _$OutcomeDetailTearOff {
  const _$OutcomeDetailTearOff();

  _OutcomeDetail call({required String? text, required int? amount}) {
    return _OutcomeDetail(
      text: text,
      amount: amount,
    );
  }

  OutcomeDetail fromJson(Map<String, Object?> json) {
    return OutcomeDetail.fromJson(json);
  }
}

/// @nodoc
const $OutcomeDetail = _$OutcomeDetailTearOff();

/// @nodoc
mixin _$OutcomeDetail {
  String? get text => throw _privateConstructorUsedError;
  int? get amount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OutcomeDetailCopyWith<OutcomeDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OutcomeDetailCopyWith<$Res> {
  factory $OutcomeDetailCopyWith(
          OutcomeDetail value, $Res Function(OutcomeDetail) then) =
      _$OutcomeDetailCopyWithImpl<$Res>;
  $Res call({String? text, int? amount});
}

/// @nodoc
class _$OutcomeDetailCopyWithImpl<$Res>
    implements $OutcomeDetailCopyWith<$Res> {
  _$OutcomeDetailCopyWithImpl(this._value, this._then);

  final OutcomeDetail _value;
  // ignore: unused_field
  final $Res Function(OutcomeDetail) _then;

  @override
  $Res call({
    Object? text = freezed,
    Object? amount = freezed,
  }) {
    return _then(_value.copyWith(
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$OutcomeDetailCopyWith<$Res>
    implements $OutcomeDetailCopyWith<$Res> {
  factory _$OutcomeDetailCopyWith(
          _OutcomeDetail value, $Res Function(_OutcomeDetail) then) =
      __$OutcomeDetailCopyWithImpl<$Res>;
  @override
  $Res call({String? text, int? amount});
}

/// @nodoc
class __$OutcomeDetailCopyWithImpl<$Res>
    extends _$OutcomeDetailCopyWithImpl<$Res>
    implements _$OutcomeDetailCopyWith<$Res> {
  __$OutcomeDetailCopyWithImpl(
      _OutcomeDetail _value, $Res Function(_OutcomeDetail) _then)
      : super(_value, (v) => _then(v as _OutcomeDetail));

  @override
  _OutcomeDetail get _value => super._value as _OutcomeDetail;

  @override
  $Res call({
    Object? text = freezed,
    Object? amount = freezed,
  }) {
    return _then(_OutcomeDetail(
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OutcomeDetail implements _OutcomeDetail {
  const _$_OutcomeDetail({required this.text, required this.amount});

  factory _$_OutcomeDetail.fromJson(Map<String, dynamic> json) =>
      _$$_OutcomeDetailFromJson(json);

  @override
  final String? text;
  @override
  final int? amount;

  @override
  String toString() {
    return 'OutcomeDetail(text: $text, amount: $amount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OutcomeDetail &&
            const DeepCollectionEquality().equals(other.text, text) &&
            const DeepCollectionEquality().equals(other.amount, amount));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(text),
      const DeepCollectionEquality().hash(amount));

  @JsonKey(ignore: true)
  @override
  _$OutcomeDetailCopyWith<_OutcomeDetail> get copyWith =>
      __$OutcomeDetailCopyWithImpl<_OutcomeDetail>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OutcomeDetailToJson(this);
  }
}

abstract class _OutcomeDetail implements OutcomeDetail {
  const factory _OutcomeDetail({required String? text, required int? amount}) =
      _$_OutcomeDetail;

  factory _OutcomeDetail.fromJson(Map<String, dynamic> json) =
      _$_OutcomeDetail.fromJson;

  @override
  String? get text;
  @override
  int? get amount;
  @override
  @JsonKey(ignore: true)
  _$OutcomeDetailCopyWith<_OutcomeDetail> get copyWith =>
      throw _privateConstructorUsedError;
}
