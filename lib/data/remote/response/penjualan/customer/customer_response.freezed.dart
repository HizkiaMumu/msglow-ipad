// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'customer_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CustomerResponse _$CustomerResponseFromJson(Map<String, dynamic> json) {
  return _CustomerResponse.fromJson(json);
}

/// @nodoc
class _$CustomerResponseTearOff {
  const _$CustomerResponseTearOff();

  _CustomerResponse call(
      {required List<CustomerElementResponse>? customers,
      required String? status,
      @JsonKey(name: 'status_code') required String? statusCode,
      required String? message}) {
    return _CustomerResponse(
      customers: customers,
      status: status,
      statusCode: statusCode,
      message: message,
    );
  }

  CustomerResponse fromJson(Map<String, Object?> json) {
    return CustomerResponse.fromJson(json);
  }
}

/// @nodoc
const $CustomerResponse = _$CustomerResponseTearOff();

/// @nodoc
mixin _$CustomerResponse {
  List<CustomerElementResponse>? get customers =>
      throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'status_code')
  String? get statusCode => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CustomerResponseCopyWith<CustomerResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerResponseCopyWith<$Res> {
  factory $CustomerResponseCopyWith(
          CustomerResponse value, $Res Function(CustomerResponse) then) =
      _$CustomerResponseCopyWithImpl<$Res>;
  $Res call(
      {List<CustomerElementResponse>? customers,
      String? status,
      @JsonKey(name: 'status_code') String? statusCode,
      String? message});
}

/// @nodoc
class _$CustomerResponseCopyWithImpl<$Res>
    implements $CustomerResponseCopyWith<$Res> {
  _$CustomerResponseCopyWithImpl(this._value, this._then);

  final CustomerResponse _value;
  // ignore: unused_field
  final $Res Function(CustomerResponse) _then;

  @override
  $Res call({
    Object? customers = freezed,
    Object? status = freezed,
    Object? statusCode = freezed,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      customers: customers == freezed
          ? _value.customers
          : customers // ignore: cast_nullable_to_non_nullable
              as List<CustomerElementResponse>?,
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
abstract class _$CustomerResponseCopyWith<$Res>
    implements $CustomerResponseCopyWith<$Res> {
  factory _$CustomerResponseCopyWith(
          _CustomerResponse value, $Res Function(_CustomerResponse) then) =
      __$CustomerResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<CustomerElementResponse>? customers,
      String? status,
      @JsonKey(name: 'status_code') String? statusCode,
      String? message});
}

/// @nodoc
class __$CustomerResponseCopyWithImpl<$Res>
    extends _$CustomerResponseCopyWithImpl<$Res>
    implements _$CustomerResponseCopyWith<$Res> {
  __$CustomerResponseCopyWithImpl(
      _CustomerResponse _value, $Res Function(_CustomerResponse) _then)
      : super(_value, (v) => _then(v as _CustomerResponse));

  @override
  _CustomerResponse get _value => super._value as _CustomerResponse;

  @override
  $Res call({
    Object? customers = freezed,
    Object? status = freezed,
    Object? statusCode = freezed,
    Object? message = freezed,
  }) {
    return _then(_CustomerResponse(
      customers: customers == freezed
          ? _value.customers
          : customers // ignore: cast_nullable_to_non_nullable
              as List<CustomerElementResponse>?,
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
class _$_CustomerResponse extends _CustomerResponse {
  const _$_CustomerResponse(
      {required this.customers,
      required this.status,
      @JsonKey(name: 'status_code') required this.statusCode,
      required this.message})
      : super._();

  factory _$_CustomerResponse.fromJson(Map<String, dynamic> json) =>
      _$$_CustomerResponseFromJson(json);

  @override
  final List<CustomerElementResponse>? customers;
  @override
  final String? status;
  @override
  @JsonKey(name: 'status_code')
  final String? statusCode;
  @override
  final String? message;

  @override
  String toString() {
    return 'CustomerResponse(customers: $customers, status: $status, statusCode: $statusCode, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CustomerResponse &&
            const DeepCollectionEquality().equals(other.customers, customers) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality()
                .equals(other.statusCode, statusCode) &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(customers),
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(statusCode),
      const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$CustomerResponseCopyWith<_CustomerResponse> get copyWith =>
      __$CustomerResponseCopyWithImpl<_CustomerResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CustomerResponseToJson(this);
  }
}

abstract class _CustomerResponse extends CustomerResponse {
  const factory _CustomerResponse(
      {required List<CustomerElementResponse>? customers,
      required String? status,
      @JsonKey(name: 'status_code') required String? statusCode,
      required String? message}) = _$_CustomerResponse;
  const _CustomerResponse._() : super._();

  factory _CustomerResponse.fromJson(Map<String, dynamic> json) =
      _$_CustomerResponse.fromJson;

  @override
  List<CustomerElementResponse>? get customers;
  @override
  String? get status;
  @override
  @JsonKey(name: 'status_code')
  String? get statusCode;
  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$CustomerResponseCopyWith<_CustomerResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
