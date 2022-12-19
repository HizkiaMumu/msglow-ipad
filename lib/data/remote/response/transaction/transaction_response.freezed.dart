// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'transaction_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TransactionResponse _$TransactionResponseFromJson(Map<String, dynamic> json) {
  return _TransactionResponse.fromJson(json);
}

/// @nodoc
class _$TransactionResponseTearOff {
  const _$TransactionResponseTearOff();

  _TransactionResponse call(
      {required List<OrderResponse>? orders,
      required String? status,
      @JsonKey(name: 'status_code') required String? statusCode,
      required String? message}) {
    return _TransactionResponse(
      orders: orders,
      status: status,
      statusCode: statusCode,
      message: message,
    );
  }

  TransactionResponse fromJson(Map<String, Object?> json) {
    return TransactionResponse.fromJson(json);
  }
}

/// @nodoc
const $TransactionResponse = _$TransactionResponseTearOff();

/// @nodoc
mixin _$TransactionResponse {
  List<OrderResponse>? get orders => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'status_code')
  String? get statusCode => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TransactionResponseCopyWith<TransactionResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionResponseCopyWith<$Res> {
  factory $TransactionResponseCopyWith(
          TransactionResponse value, $Res Function(TransactionResponse) then) =
      _$TransactionResponseCopyWithImpl<$Res>;
  $Res call(
      {List<OrderResponse>? orders,
      String? status,
      @JsonKey(name: 'status_code') String? statusCode,
      String? message});
}

/// @nodoc
class _$TransactionResponseCopyWithImpl<$Res>
    implements $TransactionResponseCopyWith<$Res> {
  _$TransactionResponseCopyWithImpl(this._value, this._then);

  final TransactionResponse _value;
  // ignore: unused_field
  final $Res Function(TransactionResponse) _then;

  @override
  $Res call({
    Object? orders = freezed,
    Object? status = freezed,
    Object? statusCode = freezed,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      orders: orders == freezed
          ? _value.orders
          : orders // ignore: cast_nullable_to_non_nullable
              as List<OrderResponse>?,
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
abstract class _$TransactionResponseCopyWith<$Res>
    implements $TransactionResponseCopyWith<$Res> {
  factory _$TransactionResponseCopyWith(_TransactionResponse value,
          $Res Function(_TransactionResponse) then) =
      __$TransactionResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<OrderResponse>? orders,
      String? status,
      @JsonKey(name: 'status_code') String? statusCode,
      String? message});
}

/// @nodoc
class __$TransactionResponseCopyWithImpl<$Res>
    extends _$TransactionResponseCopyWithImpl<$Res>
    implements _$TransactionResponseCopyWith<$Res> {
  __$TransactionResponseCopyWithImpl(
      _TransactionResponse _value, $Res Function(_TransactionResponse) _then)
      : super(_value, (v) => _then(v as _TransactionResponse));

  @override
  _TransactionResponse get _value => super._value as _TransactionResponse;

  @override
  $Res call({
    Object? orders = freezed,
    Object? status = freezed,
    Object? statusCode = freezed,
    Object? message = freezed,
  }) {
    return _then(_TransactionResponse(
      orders: orders == freezed
          ? _value.orders
          : orders // ignore: cast_nullable_to_non_nullable
              as List<OrderResponse>?,
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
@JsonSerializable()
class _$_TransactionResponse extends _TransactionResponse {
  const _$_TransactionResponse(
      {required this.orders,
      required this.status,
      @JsonKey(name: 'status_code') required this.statusCode,
      required this.message})
      : super._();

  factory _$_TransactionResponse.fromJson(Map<String, dynamic> json) =>
      _$$_TransactionResponseFromJson(json);

  @override
  final List<OrderResponse>? orders;
  @override
  final String? status;
  @override
  @JsonKey(name: 'status_code')
  final String? statusCode;
  @override
  final String? message;

  @override
  String toString() {
    return 'TransactionResponse(orders: $orders, status: $status, statusCode: $statusCode, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TransactionResponse &&
            const DeepCollectionEquality().equals(other.orders, orders) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality()
                .equals(other.statusCode, statusCode) &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(orders),
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(statusCode),
      const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$TransactionResponseCopyWith<_TransactionResponse> get copyWith =>
      __$TransactionResponseCopyWithImpl<_TransactionResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TransactionResponseToJson(this);
  }
}

abstract class _TransactionResponse extends TransactionResponse {
  const factory _TransactionResponse(
      {required List<OrderResponse>? orders,
      required String? status,
      @JsonKey(name: 'status_code') required String? statusCode,
      required String? message}) = _$_TransactionResponse;
  const _TransactionResponse._() : super._();

  factory _TransactionResponse.fromJson(Map<String, dynamic> json) =
      _$_TransactionResponse.fromJson;

  @override
  List<OrderResponse>? get orders;
  @override
  String? get status;
  @override
  @JsonKey(name: 'status_code')
  String? get statusCode;
  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$TransactionResponseCopyWith<_TransactionResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
