// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'product_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ProductListTearOff {
  const _$ProductListTearOff();

  _ProductList call(
      {required List<Product>? products,
      required String? status,
      required String? statusCode,
      required String? message}) {
    return _ProductList(
      products: products,
      status: status,
      statusCode: statusCode,
      message: message,
    );
  }
}

/// @nodoc
const $ProductList = _$ProductListTearOff();

/// @nodoc
mixin _$ProductList {
  List<Product>? get products => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  String? get statusCode => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProductListCopyWith<ProductList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductListCopyWith<$Res> {
  factory $ProductListCopyWith(
          ProductList value, $Res Function(ProductList) then) =
      _$ProductListCopyWithImpl<$Res>;
  $Res call(
      {List<Product>? products,
      String? status,
      String? statusCode,
      String? message});
}

/// @nodoc
class _$ProductListCopyWithImpl<$Res> implements $ProductListCopyWith<$Res> {
  _$ProductListCopyWithImpl(this._value, this._then);

  final ProductList _value;
  // ignore: unused_field
  final $Res Function(ProductList) _then;

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
              as List<Product>?,
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
abstract class _$ProductListCopyWith<$Res>
    implements $ProductListCopyWith<$Res> {
  factory _$ProductListCopyWith(
          _ProductList value, $Res Function(_ProductList) then) =
      __$ProductListCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<Product>? products,
      String? status,
      String? statusCode,
      String? message});
}

/// @nodoc
class __$ProductListCopyWithImpl<$Res> extends _$ProductListCopyWithImpl<$Res>
    implements _$ProductListCopyWith<$Res> {
  __$ProductListCopyWithImpl(
      _ProductList _value, $Res Function(_ProductList) _then)
      : super(_value, (v) => _then(v as _ProductList));

  @override
  _ProductList get _value => super._value as _ProductList;

  @override
  $Res call({
    Object? products = freezed,
    Object? status = freezed,
    Object? statusCode = freezed,
    Object? message = freezed,
  }) {
    return _then(_ProductList(
      products: products == freezed
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>?,
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

class _$_ProductList implements _ProductList {
  const _$_ProductList(
      {required this.products,
      required this.status,
      required this.statusCode,
      required this.message});

  @override
  final List<Product>? products;
  @override
  final String? status;
  @override
  final String? statusCode;
  @override
  final String? message;

  @override
  String toString() {
    return 'ProductList(products: $products, status: $status, statusCode: $statusCode, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ProductList &&
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
  _$ProductListCopyWith<_ProductList> get copyWith =>
      __$ProductListCopyWithImpl<_ProductList>(this, _$identity);
}

abstract class _ProductList implements ProductList {
  const factory _ProductList(
      {required List<Product>? products,
      required String? status,
      required String? statusCode,
      required String? message}) = _$_ProductList;

  @override
  List<Product>? get products;
  @override
  String? get status;
  @override
  String? get statusCode;
  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$ProductListCopyWith<_ProductList> get copyWith =>
      throw _privateConstructorUsedError;
}
