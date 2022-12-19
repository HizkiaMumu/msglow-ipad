// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'transaction.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$TransactionTearOff {
  const _$TransactionTearOff();

  _Transaction call(
      {required List<Order>? orders,
      required List<User> cashierNames,
      required String? status,
      required String? statusCode,
      required String? message}) {
    return _Transaction(
      orders: orders,
      cashierNames: cashierNames,
      status: status,
      statusCode: statusCode,
      message: message,
    );
  }
}

/// @nodoc
const $Transaction = _$TransactionTearOff();

/// @nodoc
mixin _$Transaction {
  List<Order>? get orders => throw _privateConstructorUsedError;
  List<User> get cashierNames => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  String? get statusCode => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TransactionCopyWith<Transaction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionCopyWith<$Res> {
  factory $TransactionCopyWith(
          Transaction value, $Res Function(Transaction) then) =
      _$TransactionCopyWithImpl<$Res>;
  $Res call(
      {List<Order>? orders,
      List<User> cashierNames,
      String? status,
      String? statusCode,
      String? message});
}

/// @nodoc
class _$TransactionCopyWithImpl<$Res> implements $TransactionCopyWith<$Res> {
  _$TransactionCopyWithImpl(this._value, this._then);

  final Transaction _value;
  // ignore: unused_field
  final $Res Function(Transaction) _then;

  @override
  $Res call({
    Object? orders = freezed,
    Object? cashierNames = freezed,
    Object? status = freezed,
    Object? statusCode = freezed,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      orders: orders == freezed
          ? _value.orders
          : orders // ignore: cast_nullable_to_non_nullable
              as List<Order>?,
      cashierNames: cashierNames == freezed
          ? _value.cashierNames
          : cashierNames // ignore: cast_nullable_to_non_nullable
              as List<User>,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      statusCode: statusCode == freezed
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as String?,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$TransactionCopyWith<$Res>
    implements $TransactionCopyWith<$Res> {
  factory _$TransactionCopyWith(
          _Transaction value, $Res Function(_Transaction) then) =
      __$TransactionCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<Order>? orders,
      List<User> cashierNames,
      String? status,
      String? statusCode,
      String? message});
}

/// @nodoc
class __$TransactionCopyWithImpl<$Res> extends _$TransactionCopyWithImpl<$Res>
    implements _$TransactionCopyWith<$Res> {
  __$TransactionCopyWithImpl(
      _Transaction _value, $Res Function(_Transaction) _then)
      : super(_value, (v) => _then(v as _Transaction));

  @override
  _Transaction get _value => super._value as _Transaction;

  @override
  $Res call({
    Object? orders = freezed,
    Object? cashierNames = freezed,
    Object? status = freezed,
    Object? statusCode = freezed,
    Object? message = freezed,
  }) {
    return _then(_Transaction(
      orders: orders == freezed
          ? _value.orders
          : orders // ignore: cast_nullable_to_non_nullable
              as List<Order>?,
      cashierNames: cashierNames == freezed
          ? _value.cashierNames
          : cashierNames // ignore: cast_nullable_to_non_nullable
              as List<User>,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      statusCode: statusCode == freezed
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as String?,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_Transaction implements _Transaction {
  const _$_Transaction(
      {required this.orders,
      required this.cashierNames,
      required this.status,
      required this.statusCode,
      required this.message});

  @override
  final List<Order>? orders;
  @override
  final List<User> cashierNames;
  @override
  final String? status;
  @override
  final String? statusCode;
  @override
  final String? message;

  @override
  String toString() {
    return 'Transaction(orders: $orders, cashierNames: $cashierNames, status: $status, statusCode: $statusCode, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Transaction &&
            const DeepCollectionEquality().equals(other.orders, orders) &&
            const DeepCollectionEquality()
                .equals(other.cashierNames, cashierNames) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality()
                .equals(other.statusCode, statusCode) &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(orders),
      const DeepCollectionEquality().hash(cashierNames),
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(statusCode),
      const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$TransactionCopyWith<_Transaction> get copyWith =>
      __$TransactionCopyWithImpl<_Transaction>(this, _$identity);
}

abstract class _Transaction implements Transaction {
  const factory _Transaction(
      {required List<Order>? orders,
      required List<User> cashierNames,
      required String? status,
      required String? statusCode,
      required String? message}) = _$_Transaction;

  @override
  List<Order>? get orders;
  @override
  List<User> get cashierNames;
  @override
  String? get status;
  @override
  String? get statusCode;
  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$TransactionCopyWith<_Transaction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$ShippingStatusCategoryTearOff {
  const _$ShippingStatusCategoryTearOff();

  _ShippingStatusCategory call({required int id, required String name}) {
    return _ShippingStatusCategory(
      id: id,
      name: name,
    );
  }
}

/// @nodoc
const $ShippingStatusCategory = _$ShippingStatusCategoryTearOff();

/// @nodoc
mixin _$ShippingStatusCategory {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ShippingStatusCategoryCopyWith<ShippingStatusCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShippingStatusCategoryCopyWith<$Res> {
  factory $ShippingStatusCategoryCopyWith(ShippingStatusCategory value,
          $Res Function(ShippingStatusCategory) then) =
      _$ShippingStatusCategoryCopyWithImpl<$Res>;
  $Res call({int id, String name});
}

/// @nodoc
class _$ShippingStatusCategoryCopyWithImpl<$Res>
    implements $ShippingStatusCategoryCopyWith<$Res> {
  _$ShippingStatusCategoryCopyWithImpl(this._value, this._then);

  final ShippingStatusCategory _value;
  // ignore: unused_field
  final $Res Function(ShippingStatusCategory) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$ShippingStatusCategoryCopyWith<$Res>
    implements $ShippingStatusCategoryCopyWith<$Res> {
  factory _$ShippingStatusCategoryCopyWith(_ShippingStatusCategory value,
          $Res Function(_ShippingStatusCategory) then) =
      __$ShippingStatusCategoryCopyWithImpl<$Res>;
  @override
  $Res call({int id, String name});
}

/// @nodoc
class __$ShippingStatusCategoryCopyWithImpl<$Res>
    extends _$ShippingStatusCategoryCopyWithImpl<$Res>
    implements _$ShippingStatusCategoryCopyWith<$Res> {
  __$ShippingStatusCategoryCopyWithImpl(_ShippingStatusCategory _value,
      $Res Function(_ShippingStatusCategory) _then)
      : super(_value, (v) => _then(v as _ShippingStatusCategory));

  @override
  _ShippingStatusCategory get _value => super._value as _ShippingStatusCategory;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_ShippingStatusCategory(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ShippingStatusCategory implements _ShippingStatusCategory {
  const _$_ShippingStatusCategory({required this.id, required this.name});

  @override
  final int id;
  @override
  final String name;

  @override
  String toString() {
    return 'ShippingStatusCategory(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ShippingStatusCategory &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name));

  @JsonKey(ignore: true)
  @override
  _$ShippingStatusCategoryCopyWith<_ShippingStatusCategory> get copyWith =>
      __$ShippingStatusCategoryCopyWithImpl<_ShippingStatusCategory>(
          this, _$identity);
}

abstract class _ShippingStatusCategory implements ShippingStatusCategory {
  const factory _ShippingStatusCategory(
      {required int id, required String name}) = _$_ShippingStatusCategory;

  @override
  int get id;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$ShippingStatusCategoryCopyWith<_ShippingStatusCategory> get copyWith =>
      throw _privateConstructorUsedError;
}
