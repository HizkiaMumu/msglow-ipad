// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'product_price_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProductPriceResponse _$ProductPriceResponseFromJson(Map<String, dynamic> json) {
  return _ProductPriceResponse.fromJson(json);
}

/// @nodoc
class _$ProductPriceResponseTearOff {
  const _$ProductPriceResponseTearOff();

  _ProductPriceResponse call(
      {required int? id,
      @JsonKey(name: 'product_id') required int? productId,
      required String? quantity,
      required String? price,
      @JsonKey(name: 'created_at') required DateTime? createdAt,
      @JsonKey(name: 'update_at') required DateTime? updatedAt,
      @JsonKey(name: 'status_customer_id') required int? statusCustomerId}) {
    return _ProductPriceResponse(
      id: id,
      productId: productId,
      quantity: quantity,
      price: price,
      createdAt: createdAt,
      updatedAt: updatedAt,
      statusCustomerId: statusCustomerId,
    );
  }

  ProductPriceResponse fromJson(Map<String, Object?> json) {
    return ProductPriceResponse.fromJson(json);
  }
}

/// @nodoc
const $ProductPriceResponse = _$ProductPriceResponseTearOff();

/// @nodoc
mixin _$ProductPriceResponse {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'product_id')
  int? get productId => throw _privateConstructorUsedError;
  String? get quantity => throw _privateConstructorUsedError;
  String? get price => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'update_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'status_customer_id')
  int? get statusCustomerId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductPriceResponseCopyWith<ProductPriceResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductPriceResponseCopyWith<$Res> {
  factory $ProductPriceResponseCopyWith(ProductPriceResponse value,
          $Res Function(ProductPriceResponse) then) =
      _$ProductPriceResponseCopyWithImpl<$Res>;
  $Res call(
      {int? id,
      @JsonKey(name: 'product_id') int? productId,
      String? quantity,
      String? price,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'update_at') DateTime? updatedAt,
      @JsonKey(name: 'status_customer_id') int? statusCustomerId});
}

/// @nodoc
class _$ProductPriceResponseCopyWithImpl<$Res>
    implements $ProductPriceResponseCopyWith<$Res> {
  _$ProductPriceResponseCopyWithImpl(this._value, this._then);

  final ProductPriceResponse _value;
  // ignore: unused_field
  final $Res Function(ProductPriceResponse) _then;

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
abstract class _$ProductPriceResponseCopyWith<$Res>
    implements $ProductPriceResponseCopyWith<$Res> {
  factory _$ProductPriceResponseCopyWith(_ProductPriceResponse value,
          $Res Function(_ProductPriceResponse) then) =
      __$ProductPriceResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
      @JsonKey(name: 'product_id') int? productId,
      String? quantity,
      String? price,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'update_at') DateTime? updatedAt,
      @JsonKey(name: 'status_customer_id') int? statusCustomerId});
}

/// @nodoc
class __$ProductPriceResponseCopyWithImpl<$Res>
    extends _$ProductPriceResponseCopyWithImpl<$Res>
    implements _$ProductPriceResponseCopyWith<$Res> {
  __$ProductPriceResponseCopyWithImpl(
      _ProductPriceResponse _value, $Res Function(_ProductPriceResponse) _then)
      : super(_value, (v) => _then(v as _ProductPriceResponse));

  @override
  _ProductPriceResponse get _value => super._value as _ProductPriceResponse;

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
    return _then(_ProductPriceResponse(
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
@JsonSerializable()
class _$_ProductPriceResponse extends _ProductPriceResponse {
  const _$_ProductPriceResponse(
      {required this.id,
      @JsonKey(name: 'product_id') required this.productId,
      required this.quantity,
      required this.price,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'update_at') required this.updatedAt,
      @JsonKey(name: 'status_customer_id') required this.statusCustomerId})
      : super._();

  factory _$_ProductPriceResponse.fromJson(Map<String, dynamic> json) =>
      _$$_ProductPriceResponseFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: 'product_id')
  final int? productId;
  @override
  final String? quantity;
  @override
  final String? price;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @override
  @JsonKey(name: 'update_at')
  final DateTime? updatedAt;
  @override
  @JsonKey(name: 'status_customer_id')
  final int? statusCustomerId;

  @override
  String toString() {
    return 'ProductPriceResponse(id: $id, productId: $productId, quantity: $quantity, price: $price, createdAt: $createdAt, updatedAt: $updatedAt, statusCustomerId: $statusCustomerId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ProductPriceResponse &&
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
  _$ProductPriceResponseCopyWith<_ProductPriceResponse> get copyWith =>
      __$ProductPriceResponseCopyWithImpl<_ProductPriceResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductPriceResponseToJson(this);
  }
}

abstract class _ProductPriceResponse extends ProductPriceResponse {
  const factory _ProductPriceResponse(
      {required int? id,
      @JsonKey(name: 'product_id')
          required int? productId,
      required String? quantity,
      required String? price,
      @JsonKey(name: 'created_at')
          required DateTime? createdAt,
      @JsonKey(name: 'update_at')
          required DateTime? updatedAt,
      @JsonKey(name: 'status_customer_id')
          required int? statusCustomerId}) = _$_ProductPriceResponse;
  const _ProductPriceResponse._() : super._();

  factory _ProductPriceResponse.fromJson(Map<String, dynamic> json) =
      _$_ProductPriceResponse.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: 'product_id')
  int? get productId;
  @override
  String? get quantity;
  @override
  String? get price;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @override
  @JsonKey(name: 'update_at')
  DateTime? get updatedAt;
  @override
  @JsonKey(name: 'status_customer_id')
  int? get statusCustomerId;
  @override
  @JsonKey(ignore: true)
  _$ProductPriceResponseCopyWith<_ProductPriceResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
