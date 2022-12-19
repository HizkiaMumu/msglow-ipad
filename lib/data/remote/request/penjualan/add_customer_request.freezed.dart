// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'add_customer_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AddCustomerRequest _$AddCustomerRequestFromJson(Map<String, dynamic> json) {
  return _AddCustomerRequest.fromJson(json);
}

/// @nodoc
class _$AddCustomerRequestTearOff {
  const _$AddCustomerRequestTearOff();

  _AddCustomerRequest call(
      {@JsonKey(name: 'status_customer_id') int? statusCustomerId,
      @JsonKey(name: 'full_name') required String fullName,
      @JsonKey(name: 'phone_number') required String phoneNumber,
      @JsonKey(name: 'number_id') required String numberId,
      required String address}) {
    return _AddCustomerRequest(
      statusCustomerId: statusCustomerId,
      fullName: fullName,
      phoneNumber: phoneNumber,
      numberId: numberId,
      address: address,
    );
  }

  AddCustomerRequest fromJson(Map<String, Object?> json) {
    return AddCustomerRequest.fromJson(json);
  }
}

/// @nodoc
const $AddCustomerRequest = _$AddCustomerRequestTearOff();

/// @nodoc
mixin _$AddCustomerRequest {
  @JsonKey(name: 'status_customer_id')
  int? get statusCustomerId => throw _privateConstructorUsedError;
  @JsonKey(name: 'full_name')
  String get fullName => throw _privateConstructorUsedError;
  @JsonKey(name: 'phone_number')
  String get phoneNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'number_id')
  String get numberId => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddCustomerRequestCopyWith<AddCustomerRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddCustomerRequestCopyWith<$Res> {
  factory $AddCustomerRequestCopyWith(
          AddCustomerRequest value, $Res Function(AddCustomerRequest) then) =
      _$AddCustomerRequestCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'status_customer_id') int? statusCustomerId,
      @JsonKey(name: 'full_name') String fullName,
      @JsonKey(name: 'phone_number') String phoneNumber,
      @JsonKey(name: 'number_id') String numberId,
      String address});
}

/// @nodoc
class _$AddCustomerRequestCopyWithImpl<$Res>
    implements $AddCustomerRequestCopyWith<$Res> {
  _$AddCustomerRequestCopyWithImpl(this._value, this._then);

  final AddCustomerRequest _value;
  // ignore: unused_field
  final $Res Function(AddCustomerRequest) _then;

  @override
  $Res call({
    Object? statusCustomerId = freezed,
    Object? fullName = freezed,
    Object? phoneNumber = freezed,
    Object? numberId = freezed,
    Object? address = freezed,
  }) {
    return _then(_value.copyWith(
      statusCustomerId: statusCustomerId == freezed
          ? _value.statusCustomerId
          : statusCustomerId // ignore: cast_nullable_to_non_nullable
              as int?,
      fullName: fullName == freezed
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      numberId: numberId == freezed
          ? _value.numberId
          : numberId // ignore: cast_nullable_to_non_nullable
              as String,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$AddCustomerRequestCopyWith<$Res>
    implements $AddCustomerRequestCopyWith<$Res> {
  factory _$AddCustomerRequestCopyWith(
          _AddCustomerRequest value, $Res Function(_AddCustomerRequest) then) =
      __$AddCustomerRequestCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'status_customer_id') int? statusCustomerId,
      @JsonKey(name: 'full_name') String fullName,
      @JsonKey(name: 'phone_number') String phoneNumber,
      @JsonKey(name: 'number_id') String numberId,
      String address});
}

/// @nodoc
class __$AddCustomerRequestCopyWithImpl<$Res>
    extends _$AddCustomerRequestCopyWithImpl<$Res>
    implements _$AddCustomerRequestCopyWith<$Res> {
  __$AddCustomerRequestCopyWithImpl(
      _AddCustomerRequest _value, $Res Function(_AddCustomerRequest) _then)
      : super(_value, (v) => _then(v as _AddCustomerRequest));

  @override
  _AddCustomerRequest get _value => super._value as _AddCustomerRequest;

  @override
  $Res call({
    Object? statusCustomerId = freezed,
    Object? fullName = freezed,
    Object? phoneNumber = freezed,
    Object? numberId = freezed,
    Object? address = freezed,
  }) {
    return _then(_AddCustomerRequest(
      statusCustomerId: statusCustomerId == freezed
          ? _value.statusCustomerId
          : statusCustomerId // ignore: cast_nullable_to_non_nullable
              as int?,
      fullName: fullName == freezed
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      numberId: numberId == freezed
          ? _value.numberId
          : numberId // ignore: cast_nullable_to_non_nullable
              as String,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AddCustomerRequest implements _AddCustomerRequest {
  const _$_AddCustomerRequest(
      {@JsonKey(name: 'status_customer_id') this.statusCustomerId,
      @JsonKey(name: 'full_name') required this.fullName,
      @JsonKey(name: 'phone_number') required this.phoneNumber,
      @JsonKey(name: 'number_id') required this.numberId,
      required this.address});

  factory _$_AddCustomerRequest.fromJson(Map<String, dynamic> json) =>
      _$$_AddCustomerRequestFromJson(json);

  @override
  @JsonKey(name: 'status_customer_id')
  final int? statusCustomerId;
  @override
  @JsonKey(name: 'full_name')
  final String fullName;
  @override
  @JsonKey(name: 'phone_number')
  final String phoneNumber;
  @override
  @JsonKey(name: 'number_id')
  final String numberId;
  @override
  final String address;

  @override
  String toString() {
    return 'AddCustomerRequest(statusCustomerId: $statusCustomerId, fullName: $fullName, phoneNumber: $phoneNumber, numberId: $numberId, address: $address)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AddCustomerRequest &&
            const DeepCollectionEquality()
                .equals(other.statusCustomerId, statusCustomerId) &&
            const DeepCollectionEquality().equals(other.fullName, fullName) &&
            const DeepCollectionEquality()
                .equals(other.phoneNumber, phoneNumber) &&
            const DeepCollectionEquality().equals(other.numberId, numberId) &&
            const DeepCollectionEquality().equals(other.address, address));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(statusCustomerId),
      const DeepCollectionEquality().hash(fullName),
      const DeepCollectionEquality().hash(phoneNumber),
      const DeepCollectionEquality().hash(numberId),
      const DeepCollectionEquality().hash(address));

  @JsonKey(ignore: true)
  @override
  _$AddCustomerRequestCopyWith<_AddCustomerRequest> get copyWith =>
      __$AddCustomerRequestCopyWithImpl<_AddCustomerRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AddCustomerRequestToJson(this);
  }
}

abstract class _AddCustomerRequest implements AddCustomerRequest {
  const factory _AddCustomerRequest(
      {@JsonKey(name: 'status_customer_id') int? statusCustomerId,
      @JsonKey(name: 'full_name') required String fullName,
      @JsonKey(name: 'phone_number') required String phoneNumber,
      @JsonKey(name: 'number_id') required String numberId,
      required String address}) = _$_AddCustomerRequest;

  factory _AddCustomerRequest.fromJson(Map<String, dynamic> json) =
      _$_AddCustomerRequest.fromJson;

  @override
  @JsonKey(name: 'status_customer_id')
  int? get statusCustomerId;
  @override
  @JsonKey(name: 'full_name')
  String get fullName;
  @override
  @JsonKey(name: 'phone_number')
  String get phoneNumber;
  @override
  @JsonKey(name: 'number_id')
  String get numberId;
  @override
  String get address;
  @override
  @JsonKey(ignore: true)
  _$AddCustomerRequestCopyWith<_AddCustomerRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
