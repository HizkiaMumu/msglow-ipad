// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'product_list_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProductListResponse _$ProductListResponseFromJson(Map<String, dynamic> json) {
  return _ProductListResponse.fromJson(json);
}

/// @nodoc
class _$ProductListResponseTearOff {
  const _$ProductListResponseTearOff();

  _ProductListResponse call(
      {required List<ProductResponse>? products,
      required String? status,
      @JsonKey(name: 'status_code') required String? statusCode,
      required String? message}) {
    return _ProductListResponse(
      products: products,
      status: status,
      statusCode: statusCode,
      message: message,
    );
  }

  ProductListResponse fromJson(Map<String, Object?> json) {
    return ProductListResponse.fromJson(json);
  }
}

/// @nodoc
const $ProductListResponse = _$ProductListResponseTearOff();

/// @nodoc
mixin _$ProductListResponse {
  List<ProductResponse>? get products => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'status_code')
  String? get statusCode => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductListResponseCopyWith<ProductListResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductListResponseCopyWith<$Res> {
  factory $ProductListResponseCopyWith(
          ProductListResponse value, $Res Function(ProductListResponse) then) =
      _$ProductListResponseCopyWithImpl<$Res>;
  $Res call(
      {List<ProductResponse>? products,
      String? status,
      @JsonKey(name: 'status_code') String? statusCode,
      String? message});
}

/// @nodoc
class _$ProductListResponseCopyWithImpl<$Res>
    implements $ProductListResponseCopyWith<$Res> {
  _$ProductListResponseCopyWithImpl(this._value, this._then);

  final ProductListResponse _value;
  // ignore: unused_field
  final $Res Function(ProductListResponse) _then;

  @override
  $Res call({
    Object? products = freezed,
    Object? status = freezed,
    Object? statusCode = freezed,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      products: products == freezed
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ProductResponse>?,
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
abstract class _$ProductListResponseCopyWith<$Res>
    implements $ProductListResponseCopyWith<$Res> {
  factory _$ProductListResponseCopyWith(_ProductListResponse value,
          $Res Function(_ProductListResponse) then) =
      __$ProductListResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<ProductResponse>? products,
      String? status,
      @JsonKey(name: 'status_code') String? statusCode,
      String? message});
}

/// @nodoc
class __$ProductListResponseCopyWithImpl<$Res>
    extends _$ProductListResponseCopyWithImpl<$Res>
    implements _$ProductListResponseCopyWith<$Res> {
  __$ProductListResponseCopyWithImpl(
      _ProductListResponse _value, $Res Function(_ProductListResponse) _then)
      : super(_value, (v) => _then(v as _ProductListResponse));

  @override
  _ProductListResponse get _value => super._value as _ProductListResponse;

  @override
  $Res call({
    Object? products = freezed,
    Object? status = freezed,
    Object? statusCode = freezed,
    Object? message = freezed,
  }) {
    return _then(_ProductListResponse(
      products: products == freezed
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ProductResponse>?,
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
class _$_ProductListResponse extends _ProductListResponse {
  const _$_ProductListResponse(
      {required this.products,
      required this.status,
      @JsonKey(name: 'status_code') required this.statusCode,
      required this.message})
      : super._();

  factory _$_ProductListResponse.fromJson(Map<String, dynamic> json) =>
      _$$_ProductListResponseFromJson(json);

  @override
  final List<ProductResponse>? products;
  @override
  final String? status;
  @override
  @JsonKey(name: 'status_code')
  final String? statusCode;
  @override
  final String? message;

  @override
  String toString() {
    return 'ProductListResponse(products: $products, status: $status, statusCode: $statusCode, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ProductListResponse &&
            const DeepCollectionEquality().equals(other.products, products) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality()
                .equals(other.statusCode, statusCode) &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(products),
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(statusCode),
      const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$ProductListResponseCopyWith<_ProductListResponse> get copyWith =>
      __$ProductListResponseCopyWithImpl<_ProductListResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductListResponseToJson(this);
  }
}

abstract class _ProductListResponse extends ProductListResponse {
  const factory _ProductListResponse(
      {required List<ProductResponse>? products,
      required String? status,
      @JsonKey(name: 'status_code') required String? statusCode,
      required String? message}) = _$_ProductListResponse;
  const _ProductListResponse._() : super._();

  factory _ProductListResponse.fromJson(Map<String, dynamic> json) =
      _$_ProductListResponse.fromJson;

  @override
  List<ProductResponse>? get products;
  @override
  String? get status;
  @override
  @JsonKey(name: 'status_code')
  String? get statusCode;
  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$ProductListResponseCopyWith<_ProductListResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
