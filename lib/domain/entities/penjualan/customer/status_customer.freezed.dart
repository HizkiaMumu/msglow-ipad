// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'status_customer.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$StatusCustomerTearOff {
  const _$StatusCustomerTearOff();

  _StatusCustomer call(
      {required int? id,
      required int? merchantId,
      required String? title,
      required DateTime? createdAt,
      required DateTime? updatedAt}) {
    return _StatusCustomer(
      id: id,
      merchantId: merchantId,
      title: title,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }
}

/// @nodoc
const $StatusCustomer = _$StatusCustomerTearOff();

/// @nodoc
mixin _$StatusCustomer {
  int? get id => throw _privateConstructorUsedError;
  int? get merchantId => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StatusCustomerCopyWith<StatusCustomer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatusCustomerCopyWith<$Res> {
  factory $StatusCustomerCopyWith(
          StatusCustomer value, $Res Function(StatusCustomer) then) =
      _$StatusCustomerCopyWithImpl<$Res>;
  $Res call(
      {int? id,
      int? merchantId,
      String? title,
      DateTime? createdAt,
      DateTime? updatedAt});
}

/// @nodoc
class _$StatusCustomerCopyWithImpl<$Res>
    implements $StatusCustomerCopyWith<$Res> {
  _$StatusCustomerCopyWithImpl(this._value, this._then);

  final StatusCustomer _value;
  // ignore: unused_field
  final $Res Function(StatusCustomer) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? merchantId = freezed,
    Object? title = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      merchantId: merchantId == freezed
          ? _value.merchantId
          : merchantId // ignore: cast_nullable_to_non_nullable
              as int?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
abstract class _$StatusCustomerCopyWith<$Res>
    implements $StatusCustomerCopyWith<$Res> {
  factory _$StatusCustomerCopyWith(
          _StatusCustomer value, $Res Function(_StatusCustomer) then) =
      __$StatusCustomerCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
      int? merchantId,
      String? title,
      DateTime? createdAt,
      DateTime? updatedAt});
}

/// @nodoc
class __$StatusCustomerCopyWithImpl<$Res>
    extends _$StatusCustomerCopyWithImpl<$Res>
    implements _$StatusCustomerCopyWith<$Res> {
  __$StatusCustomerCopyWithImpl(
      _StatusCustomer _value, $Res Function(_StatusCustomer) _then)
      : super(_value, (v) => _then(v as _StatusCustomer));

  @override
  _StatusCustomer get _value => super._value as _StatusCustomer;

  @override
  $Res call({
    Object? id = freezed,
    Object? merchantId = freezed,
    Object? title = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_StatusCustomer(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      merchantId: merchantId == freezed
          ? _value.merchantId
          : merchantId // ignore: cast_nullable_to_non_nullable
              as int?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

class _$_StatusCustomer implements _StatusCustomer {
  const _$_StatusCustomer(
      {required this.id,
      required this.merchantId,
      required this.title,
      required this.createdAt,
      required this.updatedAt});

  @override
  final int? id;
  @override
  final int? merchantId;
  @override
  final String? title;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'StatusCustomer(id: $id, merchantId: $merchantId, title: $title, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StatusCustomer &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other.merchantId, merchantId) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(merchantId),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(updatedAt));

  @JsonKey(ignore: true)
  @override
  _$StatusCustomerCopyWith<_StatusCustomer> get copyWith =>
      __$StatusCustomerCopyWithImpl<_StatusCustomer>(this, _$identity);
}

abstract class _StatusCustomer implements StatusCustomer {
  const factory _StatusCustomer(
      {required int? id,
      required int? merchantId,
      required String? title,
      required DateTime? createdAt,
      required DateTime? updatedAt}) = _$_StatusCustomer;

  @override
  int? get id;
  @override
  int? get merchantId;
  @override
  String? get title;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$StatusCustomerCopyWith<_StatusCustomer> get copyWith =>
      throw _privateConstructorUsedError;
}
