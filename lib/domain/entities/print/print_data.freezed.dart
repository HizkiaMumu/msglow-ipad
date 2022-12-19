// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'print_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PrintDataTearOff {
  const _$PrintDataTearOff();

  _PrintData call(
      {required CustomerElement? customer,
      required List<PrintOrderData> orderData,
      required List<PrintOrderData> orderPackages,
      required List<PrintOrderData> orderCustom,
      required int subtotal,
      required int discount,
      required int total,
      required String paymentMethod,
      required int? cashAmount,
      required DateTime orderDate,
      required bool isPrinted,
      User? cashierData}) {
    return _PrintData(
      customer: customer,
      orderData: orderData,
      orderPackages: orderPackages,
      orderCustom: orderCustom,
      subtotal: subtotal,
      discount: discount,
      total: total,
      paymentMethod: paymentMethod,
      cashAmount: cashAmount,
      orderDate: orderDate,
      isPrinted: isPrinted,
      cashierData: cashierData,
    );
  }
}

/// @nodoc
const $PrintData = _$PrintDataTearOff();

/// @nodoc
mixin _$PrintData {
  CustomerElement? get customer => throw _privateConstructorUsedError;
  List<PrintOrderData> get orderData => throw _privateConstructorUsedError;
  List<PrintOrderData> get orderPackages => throw _privateConstructorUsedError;
  List<PrintOrderData> get orderCustom => throw _privateConstructorUsedError;
  int get subtotal => throw _privateConstructorUsedError;
  int get discount => throw _privateConstructorUsedError;
  int get total => throw _privateConstructorUsedError;
  String get paymentMethod => throw _privateConstructorUsedError;
  int? get cashAmount => throw _privateConstructorUsedError;
  DateTime get orderDate => throw _privateConstructorUsedError;
  bool get isPrinted => throw _privateConstructorUsedError;
  User? get cashierData => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PrintDataCopyWith<PrintData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PrintDataCopyWith<$Res> {
  factory $PrintDataCopyWith(PrintData value, $Res Function(PrintData) then) =
      _$PrintDataCopyWithImpl<$Res>;
  $Res call(
      {CustomerElement? customer,
      List<PrintOrderData> orderData,
      List<PrintOrderData> orderPackages,
      List<PrintOrderData> orderCustom,
      int subtotal,
      int discount,
      int total,
      String paymentMethod,
      int? cashAmount,
      DateTime orderDate,
      bool isPrinted,
      User? cashierData});

  $CustomerElementCopyWith<$Res>? get customer;
  $UserCopyWith<$Res>? get cashierData;
}

/// @nodoc
class _$PrintDataCopyWithImpl<$Res> implements $PrintDataCopyWith<$Res> {
  _$PrintDataCopyWithImpl(this._value, this._then);

  final PrintData _value;
  // ignore: unused_field
  final $Res Function(PrintData) _then;

  @override
  $Res call({
    Object? customer = freezed,
    Object? orderData = freezed,
    Object? orderPackages = freezed,
    Object? orderCustom = freezed,
    Object? subtotal = freezed,
    Object? discount = freezed,
    Object? total = freezed,
    Object? paymentMethod = freezed,
    Object? cashAmount = freezed,
    Object? orderDate = freezed,
    Object? isPrinted = freezed,
    Object? cashierData = freezed,
  }) {
    return _then(_value.copyWith(
      customer: customer == freezed
          ? _value.customer
          : customer // ignore: cast_nullable_to_non_nullable
              as CustomerElement?,
      orderData: orderData == freezed
          ? _value.orderData
          : orderData // ignore: cast_nullable_to_non_nullable
              as List<PrintOrderData>,
      orderPackages: orderPackages == freezed
          ? _value.orderPackages
          : orderPackages // ignore: cast_nullable_to_non_nullable
              as List<PrintOrderData>,
      orderCustom: orderCustom == freezed
          ? _value.orderCustom
          : orderCustom // ignore: cast_nullable_to_non_nullable
              as List<PrintOrderData>,
      subtotal: subtotal == freezed
          ? _value.subtotal
          : subtotal // ignore: cast_nullable_to_non_nullable
              as int,
      discount: discount == freezed
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as int,
      total: total == freezed
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      paymentMethod: paymentMethod == freezed
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as String,
      cashAmount: cashAmount == freezed
          ? _value.cashAmount
          : cashAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      orderDate: orderDate == freezed
          ? _value.orderDate
          : orderDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isPrinted: isPrinted == freezed
          ? _value.isPrinted
          : isPrinted // ignore: cast_nullable_to_non_nullable
              as bool,
      cashierData: cashierData == freezed
          ? _value.cashierData
          : cashierData // ignore: cast_nullable_to_non_nullable
              as User?,
    ));
  }

  @override
  $CustomerElementCopyWith<$Res>? get customer {
    if (_value.customer == null) {
      return null;
    }

    return $CustomerElementCopyWith<$Res>(_value.customer!, (value) {
      return _then(_value.copyWith(customer: value));
    });
  }

  @override
  $UserCopyWith<$Res>? get cashierData {
    if (_value.cashierData == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.cashierData!, (value) {
      return _then(_value.copyWith(cashierData: value));
    });
  }
}

/// @nodoc
abstract class _$PrintDataCopyWith<$Res> implements $PrintDataCopyWith<$Res> {
  factory _$PrintDataCopyWith(
          _PrintData value, $Res Function(_PrintData) then) =
      __$PrintDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {CustomerElement? customer,
      List<PrintOrderData> orderData,
      List<PrintOrderData> orderPackages,
      List<PrintOrderData> orderCustom,
      int subtotal,
      int discount,
      int total,
      String paymentMethod,
      int? cashAmount,
      DateTime orderDate,
      bool isPrinted,
      User? cashierData});

  @override
  $CustomerElementCopyWith<$Res>? get customer;
  @override
  $UserCopyWith<$Res>? get cashierData;
}

/// @nodoc
class __$PrintDataCopyWithImpl<$Res> extends _$PrintDataCopyWithImpl<$Res>
    implements _$PrintDataCopyWith<$Res> {
  __$PrintDataCopyWithImpl(_PrintData _value, $Res Function(_PrintData) _then)
      : super(_value, (v) => _then(v as _PrintData));

  @override
  _PrintData get _value => super._value as _PrintData;

  @override
  $Res call({
    Object? customer = freezed,
    Object? orderData = freezed,
    Object? orderPackages = freezed,
    Object? orderCustom = freezed,
    Object? subtotal = freezed,
    Object? discount = freezed,
    Object? total = freezed,
    Object? paymentMethod = freezed,
    Object? cashAmount = freezed,
    Object? orderDate = freezed,
    Object? isPrinted = freezed,
    Object? cashierData = freezed,
  }) {
    return _then(_PrintData(
      customer: customer == freezed
          ? _value.customer
          : customer // ignore: cast_nullable_to_non_nullable
              as CustomerElement?,
      orderData: orderData == freezed
          ? _value.orderData
          : orderData // ignore: cast_nullable_to_non_nullable
              as List<PrintOrderData>,
      orderPackages: orderPackages == freezed
          ? _value.orderPackages
          : orderPackages // ignore: cast_nullable_to_non_nullable
              as List<PrintOrderData>,
      orderCustom: orderCustom == freezed
          ? _value.orderCustom
          : orderCustom // ignore: cast_nullable_to_non_nullable
              as List<PrintOrderData>,
      subtotal: subtotal == freezed
          ? _value.subtotal
          : subtotal // ignore: cast_nullable_to_non_nullable
              as int,
      discount: discount == freezed
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as int,
      total: total == freezed
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      paymentMethod: paymentMethod == freezed
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as String,
      cashAmount: cashAmount == freezed
          ? _value.cashAmount
          : cashAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      orderDate: orderDate == freezed
          ? _value.orderDate
          : orderDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isPrinted: isPrinted == freezed
          ? _value.isPrinted
          : isPrinted // ignore: cast_nullable_to_non_nullable
              as bool,
      cashierData: cashierData == freezed
          ? _value.cashierData
          : cashierData // ignore: cast_nullable_to_non_nullable
              as User?,
    ));
  }
}

/// @nodoc

class _$_PrintData extends _PrintData {
  const _$_PrintData(
      {required this.customer,
      required this.orderData,
      required this.orderPackages,
      required this.orderCustom,
      required this.subtotal,
      required this.discount,
      required this.total,
      required this.paymentMethod,
      required this.cashAmount,
      required this.orderDate,
      required this.isPrinted,
      this.cashierData})
      : super._();

  @override
  final CustomerElement? customer;
  @override
  final List<PrintOrderData> orderData;
  @override
  final List<PrintOrderData> orderPackages;
  @override
  final List<PrintOrderData> orderCustom;
  @override
  final int subtotal;
  @override
  final int discount;
  @override
  final int total;
  @override
  final String paymentMethod;
  @override
  final int? cashAmount;
  @override
  final DateTime orderDate;
  @override
  final bool isPrinted;
  @override
  final User? cashierData;

  @override
  String toString() {
    return 'PrintData(customer: $customer, orderData: $orderData, orderPackages: $orderPackages, orderCustom: $orderCustom, subtotal: $subtotal, discount: $discount, total: $total, paymentMethod: $paymentMethod, cashAmount: $cashAmount, orderDate: $orderDate, isPrinted: $isPrinted, cashierData: $cashierData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PrintData &&
            const DeepCollectionEquality().equals(other.customer, customer) &&
            const DeepCollectionEquality().equals(other.orderData, orderData) &&
            const DeepCollectionEquality()
                .equals(other.orderPackages, orderPackages) &&
            const DeepCollectionEquality()
                .equals(other.orderCustom, orderCustom) &&
            const DeepCollectionEquality().equals(other.subtotal, subtotal) &&
            const DeepCollectionEquality().equals(other.discount, discount) &&
            const DeepCollectionEquality().equals(other.total, total) &&
            const DeepCollectionEquality()
                .equals(other.paymentMethod, paymentMethod) &&
            const DeepCollectionEquality()
                .equals(other.cashAmount, cashAmount) &&
            const DeepCollectionEquality().equals(other.orderDate, orderDate) &&
            const DeepCollectionEquality().equals(other.isPrinted, isPrinted) &&
            const DeepCollectionEquality()
                .equals(other.cashierData, cashierData));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(customer),
      const DeepCollectionEquality().hash(orderData),
      const DeepCollectionEquality().hash(orderPackages),
      const DeepCollectionEquality().hash(orderCustom),
      const DeepCollectionEquality().hash(subtotal),
      const DeepCollectionEquality().hash(discount),
      const DeepCollectionEquality().hash(total),
      const DeepCollectionEquality().hash(paymentMethod),
      const DeepCollectionEquality().hash(cashAmount),
      const DeepCollectionEquality().hash(orderDate),
      const DeepCollectionEquality().hash(isPrinted),
      const DeepCollectionEquality().hash(cashierData));

  @JsonKey(ignore: true)
  @override
  _$PrintDataCopyWith<_PrintData> get copyWith =>
      __$PrintDataCopyWithImpl<_PrintData>(this, _$identity);
}

abstract class _PrintData extends PrintData {
  const factory _PrintData(
      {required CustomerElement? customer,
      required List<PrintOrderData> orderData,
      required List<PrintOrderData> orderPackages,
      required List<PrintOrderData> orderCustom,
      required int subtotal,
      required int discount,
      required int total,
      required String paymentMethod,
      required int? cashAmount,
      required DateTime orderDate,
      required bool isPrinted,
      User? cashierData}) = _$_PrintData;
  const _PrintData._() : super._();

  @override
  CustomerElement? get customer;
  @override
  List<PrintOrderData> get orderData;
  @override
  List<PrintOrderData> get orderPackages;
  @override
  List<PrintOrderData> get orderCustom;
  @override
  int get subtotal;
  @override
  int get discount;
  @override
  int get total;
  @override
  String get paymentMethod;
  @override
  int? get cashAmount;
  @override
  DateTime get orderDate;
  @override
  bool get isPrinted;
  @override
  User? get cashierData;
  @override
  @JsonKey(ignore: true)
  _$PrintDataCopyWith<_PrintData> get copyWith =>
      throw _privateConstructorUsedError;
}
