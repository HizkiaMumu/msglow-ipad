// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'status_customer_list_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StatusCustomerListResponse _$StatusCustomerListResponseFromJson(
    Map<String, dynamic> json) {
  return _StatusCustomerListResponse.fromJson(json);
}

/// @nodoc
class _$StatusCustomerListResponseTearOff {
  const _$StatusCustomerListResponseTearOff();

  _StatusCustomerListResponse call(
      {@JsonKey(name: 'status_customers')
          required List<StatusCustomerResponse>? statusCustomers}) {
    return _StatusCustomerListResponse(
      statusCustomers: statusCustomers,
    );
  }

  StatusCustomerListResponse fromJson(Map<String, Object?> json) {
    return StatusCustomerListResponse.fromJson(json);
  }
}

/// @nodoc
const $StatusCustomerListResponse = _$StatusCustomerListResponseTearOff();

/// @nodoc
mixin _$StatusCustomerListResponse {
  @JsonKey(name: 'status_customers')
  List<StatusCustomerResponse>? get statusCustomers =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StatusCustomerListResponseCopyWith<StatusCustomerListResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatusCustomerListResponseCopyWith<$Res> {
  factory $StatusCustomerListResponseCopyWith(StatusCustomerListResponse value,
          $Res Function(StatusCustomerListResponse) then) =
      _$StatusCustomerListResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'status_customers')
          List<StatusCustomerResponse>? statusCustomers});
}

/// @nodoc
class _$StatusCustomerListResponseCopyWithImpl<$Res>
    implements $StatusCustomerListResponseCopyWith<$Res> {
  _$StatusCustomerListResponseCopyWithImpl(this._value, this._then);

  final StatusCustomerListResponse _value;
  // ignore: unused_field
  final $Res Function(StatusCustomerListResponse) _then;

  @override
  $Res call({
    Object? statusCustomers = freezed,
  }) {
    return _then(_value.copyWith(
      statusCustomers: statusCustomers == freezed
          ? _value.statusCustomers
          : statusCustomers // ignore: cast_nullable_to_non_nullable
              as List<StatusCustomerResponse>?,
    ));
  }
}

/// @nodoc
abstract class _$StatusCustomerListResponseCopyWith<$Res>
    implements $StatusCustomerListResponseCopyWith<$Res> {
  factory _$StatusCustomerListResponseCopyWith(
          _StatusCustomerListResponse value,
          $Res Function(_StatusCustomerListResponse) then) =
      __$StatusCustomerListResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'status_customers')
          List<StatusCustomerResponse>? statusCustomers});
}

/// @nodoc
class __$StatusCustomerListResponseCopyWithImpl<$Res>
    extends _$StatusCustomerListResponseCopyWithImpl<$Res>
    implements _$StatusCustomerListResponseCopyWith<$Res> {
  __$StatusCustomerListResponseCopyWithImpl(_StatusCustomerListResponse _value,
      $Res Function(_StatusCustomerListResponse) _then)
      : super(_value, (v) => _then(v as _StatusCustomerListResponse));

  @override
  _StatusCustomerListResponse get _value =>
      super._value as _StatusCustomerListResponse;

  @override
  $Res call({
    Object? statusCustomers = freezed,
  }) {
    return _then(_StatusCustomerListResponse(
      statusCustomers: statusCustomers == freezed
          ? _value.statusCustomers
          : statusCustomers // ignore: cast_nullable_to_non_nullable
              as List<StatusCustomerResponse>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_StatusCustomerListResponse implements _StatusCustomerListResponse {
  const _$_StatusCustomerListResponse(
      {@JsonKey(name: 'status_customers') required this.statusCustomers});

  factory _$_StatusCustomerListResponse.fromJson(Map<String, dynamic> json) =>
      _$$_StatusCustomerListResponseFromJson(json);

  @override
  @JsonKey(name: 'status_customers')
  final List<StatusCustomerResponse>? statusCustomers;

  @override
  String toString() {
    return 'StatusCustomerListResponse(statusCustomers: $statusCustomers)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StatusCustomerListResponse &&
            const DeepCollectionEquality()
                .equals(other.statusCustomers, statusCustomers));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(statusCustomers));

  @JsonKey(ignore: true)
  @override
  _$StatusCustomerListResponseCopyWith<_StatusCustomerListResponse>
      get copyWith => __$StatusCustomerListResponseCopyWithImpl<
          _StatusCustomerListResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StatusCustomerListResponseToJson(this);
  }
}

abstract class _StatusCustomerListResponse
    implements StatusCustomerListResponse {
  const factory _StatusCustomerListResponse(
          {@JsonKey(name: 'status_customers')
              required List<StatusCustomerResponse>? statusCustomers}) =
      _$_StatusCustomerListResponse;

  factory _StatusCustomerListResponse.fromJson(Map<String, dynamic> json) =
      _$_StatusCustomerListResponse.fromJson;

  @override
  @JsonKey(name: 'status_customers')
  List<StatusCustomerResponse>? get statusCustomers;
  @override
  @JsonKey(ignore: true)
  _$StatusCustomerListResponseCopyWith<_StatusCustomerListResponse>
      get copyWith => throw _privateConstructorUsedError;
}
