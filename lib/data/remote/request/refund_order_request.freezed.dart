// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'refund_order_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RefundOrderRequest _$RefundOrderRequestFromJson(Map<String, dynamic> json) {
  return _RefundOrderRequest.fromJson(json);
}

/// @nodoc
class _$RefundOrderRequestTearOff {
  const _$RefundOrderRequestTearOff();

  _RefundOrderRequest call(
      {@JsonKey(name: 'order_id') required int orderId,
      required String notes}) {
    return _RefundOrderRequest(
      orderId: orderId,
      notes: notes,
    );
  }

  RefundOrderRequest fromJson(Map<String, Object?> json) {
    return RefundOrderRequest.fromJson(json);
  }
}

/// @nodoc
const $RefundOrderRequest = _$RefundOrderRequestTearOff();

/// @nodoc
mixin _$RefundOrderRequest {
  @JsonKey(name: 'order_id')
  int get orderId => throw _privateConstructorUsedError;
  String get notes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RefundOrderRequestCopyWith<RefundOrderRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RefundOrderRequestCopyWith<$Res> {
  factory $RefundOrderRequestCopyWith(
          RefundOrderRequest value, $Res Function(RefundOrderRequest) then) =
      _$RefundOrderRequestCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'order_id') int orderId, String notes});
}

/// @nodoc
class _$RefundOrderRequestCopyWithImpl<$Res>
    implements $RefundOrderRequestCopyWith<$Res> {
  _$RefundOrderRequestCopyWithImpl(this._value, this._then);

  final RefundOrderRequest _value;
  // ignore: unused_field
  final $Res Function(RefundOrderRequest) _then;

  @override
  $Res call({
    Object? orderId = freezed,
    Object? notes = freezed,
  }) {
    return _then(_value.copyWith(
      orderId: orderId == freezed
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as int,
      notes: notes == freezed
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$RefundOrderRequestCopyWith<$Res>
    implements $RefundOrderRequestCopyWith<$Res> {
  factory _$RefundOrderRequestCopyWith(
          _RefundOrderRequest value, $Res Function(_RefundOrderRequest) then) =
      __$RefundOrderRequestCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: 'order_id') int orderId, String notes});
}

/// @nodoc
class __$RefundOrderRequestCopyWithImpl<$Res>
    extends _$RefundOrderRequestCopyWithImpl<$Res>
    implements _$RefundOrderRequestCopyWith<$Res> {
  __$RefundOrderRequestCopyWithImpl(
      _RefundOrderRequest _value, $Res Function(_RefundOrderRequest) _then)
      : super(_value, (v) => _then(v as _RefundOrderRequest));

  @override
  _RefundOrderRequest get _value => super._value as _RefundOrderRequest;

  @override
  $Res call({
    Object? orderId = freezed,
    Object? notes = freezed,
  }) {
    return _then(_RefundOrderRequest(
      orderId: orderId == freezed
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as int,
      notes: notes == freezed
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RefundOrderRequest implements _RefundOrderRequest {
  const _$_RefundOrderRequest(
      {@JsonKey(name: 'order_id') required this.orderId, required this.notes});

  factory _$_RefundOrderRequest.fromJson(Map<String, dynamic> json) =>
      _$$_RefundOrderRequestFromJson(json);

  @override
  @JsonKey(name: 'order_id')
  final int orderId;
  @override
  final String notes;

  @override
  String toString() {
    return 'RefundOrderRequest(orderId: $orderId, notes: $notes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RefundOrderRequest &&
            const DeepCollectionEquality().equals(other.orderId, orderId) &&
            const DeepCollectionEquality().equals(other.notes, notes));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(orderId),
      const DeepCollectionEquality().hash(notes));

  @JsonKey(ignore: true)
  @override
  _$RefundOrderRequestCopyWith<_RefundOrderRequest> get copyWith =>
      __$RefundOrderRequestCopyWithImpl<_RefundOrderRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RefundOrderRequestToJson(this);
  }
}

abstract class _RefundOrderRequest implements RefundOrderRequest {
  const factory _RefundOrderRequest(
      {@JsonKey(name: 'order_id') required int orderId,
      required String notes}) = _$_RefundOrderRequest;

  factory _RefundOrderRequest.fromJson(Map<String, dynamic> json) =
      _$_RefundOrderRequest.fromJson;

  @override
  @JsonKey(name: 'order_id')
  int get orderId;
  @override
  String get notes;
  @override
  @JsonKey(ignore: true)
  _$RefundOrderRequestCopyWith<_RefundOrderRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
