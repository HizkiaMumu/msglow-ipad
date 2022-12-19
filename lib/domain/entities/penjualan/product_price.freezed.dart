// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'product_price.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ProductPriceTearOff {
  const _$ProductPriceTearOff();

  _ProductPrice call(
      {int? id,
      int? productId,
      required String? quantity,
      required String? price,
      DateTime? createdAt,
      DateTime? updatedAt,
      int? statusCustomerId}) {
    return _ProductPrice(
      id: id,
      productId: productId,
      quantity: quantity,
      price: price,
      createdAt: createdAt,
      updatedAt: updatedAt,
      statusCustomerId: statusCustomerId,
    );
  }
}

/// @nodoc
const $ProductPrice = _$ProductPriceTearOff();

/// @nodoc
mixin _$ProductPrice {
  int? get id => throw _privateConstructorUsedError;
  int? get productId => throw _privateConstructorUsedError;
  String? get quantity => throw _privateConstructorUsedError;
  String? get price => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  int? get statusCustomerId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProductPriceCopyWith<ProductPrice> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductPriceCopyWith<$Res> {
  factory $ProductPriceCopyWith(
          ProductPrice value, $Res Function(ProductPrice) then) =
      _$ProductPriceCopyWithImpl<$Res>;
  $Res call(
      {int? id,
      int? productId,
      String? quantity,
      String? price,
      DateTime? createdAt,
      DateTime? updatedAt,
      int? statusCustomerId});
}

/// @nodoc
class _$ProductPriceCopyWithImpl<$Res> implements $ProductPriceCopyWith<$Res> {
  _$ProductPriceCopyWithImpl(this._value, this._then);

  final ProductPrice _value;
  // ignore: unused_field
  final $Res Function(ProductPrice) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? productId = freezed,
    Object? quantity = freezed,
    Object? price = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? statusCustomerId = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      productId: productId == freezed
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int?,
      quantity: quantity == freezed
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as String?,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      statusCustomerId: statusCustomerId == freezed
          ? _value.statusCustomerId
          : statusCustomerId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$ProductPriceCopyWith<$Res>
    implements $ProductPriceCopyWith<$Res> {
  factory _$ProductPriceCopyWith(
          _ProductPrice value, $Res Function(_ProductPrice) then) =
      __$ProductPriceCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
      int? productId,
      String? quantity,
      String? price,
      DateTime? createdAt,
      DateTime? updatedAt,
      int? statusCustomerId});
}

/// @nodoc
class __$ProductPriceCopyWithImpl<$Res> extends _$ProductPriceCopyWithImpl<$Res>
    implements _$ProductPriceCopyWith<$Res> {
  __$ProductPriceCopyWithImpl(
      _ProductPrice _value, $Res Function(_ProductPrice) _then)
      : super(_value, (v) => _then(v as _ProductPrice));

  @override
  _ProductPrice get _value => super._value as _ProductPrice;

  @override
  $Res call({
    Object? id = freezed,
    Object? productId = freezed,
    Object? quantity = freezed,
    Object? price = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? statusCustomerId = freezed,
  }) {
    return _then(_ProductPrice(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      productId: productId == freezed
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int?,
      quantity: quantity == freezed
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as String?,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      statusCustomerId: statusCustomerId == freezed
          ? _value.statusCustomerId
          : statusCustomerId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$_ProductPrice implements _ProductPrice {
  const _$_ProductPrice(
      {this.id,
      this.productId,
      required this.quantity,
      required this.price,
      this.createdAt,
      this.updatedAt,
      this.statusCustomerId});

  @override
  final int? id;
  @override
  final int? productId;
  @override
  final String? quantity;
  @override
  final String? price;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;
  @override
  final int? statusCustomerId;

  @override
  String toString() {
    return 'ProductPrice(id: $id, productId: $productId, quantity: $quantity, price: $price, createdAt: $createdAt, updatedAt: $updatedAt, statusCustomerId: $statusCustomerId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ProductPrice &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.productId, productId) &&
            const DeepCollectionEquality().equals(other.quantity, quantity) &&
            const DeepCollectionEquality().equals(other.price, price) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt) &&
            const DeepCollectionEquality()
                .equals(other.statusCustomerId, statusCustomerId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(productId),
      const DeepCollectionEquality().hash(quantity),
      const DeepCollectionEquality().hash(price),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(updatedAt),
      const DeepCollectionEquality().hash(statusCustomerId));

  @JsonKey(ignore: true)
  @override
  _$ProductPriceCopyWith<_ProductPrice> get copyWith =>
      __$ProductPriceCopyWithImpl<_ProductPrice>(this, _$identity);
}

abstract class _ProductPrice implements ProductPrice {
  const factory _ProductPrice(
      {int? id,
      int? productId,
      required String? quantity,
      required String? price,
      DateTime? createdAt,
      DateTime? updatedAt,
      int? statusCustomerId}) = _$_ProductPrice;

  @override
  int? get id;
  @override
  int? get productId;
  @override
  String? get quantity;
  @override
  String? get price;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  int? get statusCustomerId;
  @override
  @JsonKey(ignore: true)
  _$ProductPriceCopyWith<_ProductPrice> get copyWith =>
      throw _privateConstructorUsedError;
}
