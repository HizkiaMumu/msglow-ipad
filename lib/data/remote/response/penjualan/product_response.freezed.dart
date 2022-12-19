// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'product_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProductResponse _$ProductResponseFromJson(Map<String, dynamic> json) {
  return _ProductResponse.fromJson(json);
}

/// @nodoc
class _$ProductResponseTearOff {
  const _$ProductResponseTearOff();

  _ProductResponse call(
      {required int? id,
      @JsonKey(name: 'merchant_id')
          required int? merchantId,
      required String? name,
      required String? category,
      required String? stock,
      required String? thumbnail,
      required String? description,
      @JsonKey(name: 'created_at')
          required DateTime? createdAt,
      @JsonKey(name: 'updateAt')
          required DateTime? updatedAt,
      @JsonKey(name: 'product_prices')
          required List<ProductPriceResponse>? productPrices,
      @JsonKey(name: 'product_price_quantities')
          required List<ProductPriceResponse>? productPriceQuantities,
      @JsonKey(name: 'product_price_quantity')
          required ProductPriceResponse? productPriceQuantity,
      required PromoResponse? promo}) {
    return _ProductResponse(
      id: id,
      merchantId: merchantId,
      name: name,
      category: category,
      stock: stock,
      thumbnail: thumbnail,
      description: description,
      createdAt: createdAt,
      updatedAt: updatedAt,
      productPrices: productPrices,
      productPriceQuantities: productPriceQuantities,
      productPriceQuantity: productPriceQuantity,
      promo: promo,
    );
  }

  ProductResponse fromJson(Map<String, Object?> json) {
    return ProductResponse.fromJson(json);
  }
}

/// @nodoc
const $ProductResponse = _$ProductResponseTearOff();

/// @nodoc
mixin _$ProductResponse {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'merchant_id')
  int? get merchantId => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get category => throw _privateConstructorUsedError;
  String? get stock => throw _privateConstructorUsedError;
  String? get thumbnail => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updateAt')
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'product_prices')
  List<ProductPriceResponse>? get productPrices =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'product_price_quantities')
  List<ProductPriceResponse>? get productPriceQuantities =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'product_price_quantity')
  ProductPriceResponse? get productPriceQuantity =>
      throw _privateConstructorUsedError;
  PromoResponse? get promo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductResponseCopyWith<ProductResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductResponseCopyWith<$Res> {
  factory $ProductResponseCopyWith(
          ProductResponse value, $Res Function(ProductResponse) then) =
      _$ProductResponseCopyWithImpl<$Res>;
  $Res call(
      {int? id,
      @JsonKey(name: 'merchant_id')
          int? merchantId,
      String? name,
      String? category,
      String? stock,
      String? thumbnail,
      String? description,
      @JsonKey(name: 'created_at')
          DateTime? createdAt,
      @JsonKey(name: 'updateAt')
          DateTime? updatedAt,
      @JsonKey(name: 'product_prices')
          List<ProductPriceResponse>? productPrices,
      @JsonKey(name: 'product_price_quantities')
          List<ProductPriceResponse>? productPriceQuantities,
      @JsonKey(name: 'product_price_quantity')
          ProductPriceResponse? productPriceQuantity,
      PromoResponse? promo});

  $ProductPriceResponseCopyWith<$Res>? get productPriceQuantity;
  $PromoResponseCopyWith<$Res>? get promo;
}

/// @nodoc
class _$ProductResponseCopyWithImpl<$Res>
    implements $ProductResponseCopyWith<$Res> {
  _$ProductResponseCopyWithImpl(this._value, this._then);

  final ProductResponse _value;
  // ignore: unused_field
  final $Res Function(ProductResponse) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? merchantId = freezed,
    Object? name = freezed,
    Object? category = freezed,
    Object? stock = freezed,
    Object? thumbnail = freezed,
    Object? description = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? productPrices = freezed,
    Object? productPriceQuantities = freezed,
    Object? productPriceQuantity = freezed,
    Object? promo = freezed,
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
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      stock: stock == freezed
          ? _value.stock
          : stock // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnail: thumbnail == freezed
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      productPrices: productPrices == freezed
          ? _value.productPrices
          : productPrices // ignore: cast_nullable_to_non_nullable
              as List<ProductPriceResponse>?,
      productPriceQuantities: productPriceQuantities == freezed
          ? _value.productPriceQuantities
          : productPriceQuantities // ignore: cast_nullable_to_non_nullable
              as List<ProductPriceResponse>?,
      productPriceQuantity: productPriceQuantity == freezed
          ? _value.productPriceQuantity
          : productPriceQuantity // ignore: cast_nullable_to_non_nullable
              as ProductPriceResponse?,
      promo: promo == freezed
          ? _value.promo
          : promo // ignore: cast_nullable_to_non_nullable
              as PromoResponse?,
    ));
  }

  @override
  $ProductPriceResponseCopyWith<$Res>? get productPriceQuantity {
    if (_value.productPriceQuantity == null) {
      return null;
    }

    return $ProductPriceResponseCopyWith<$Res>(_value.productPriceQuantity!,
        (value) {
      return _then(_value.copyWith(productPriceQuantity: value));
    });
  }

  @override
  $PromoResponseCopyWith<$Res>? get promo {
    if (_value.promo == null) {
      return null;
    }

    return $PromoResponseCopyWith<$Res>(_value.promo!, (value) {
      return _then(_value.copyWith(promo: value));
    });
  }
}

/// @nodoc
abstract class _$ProductResponseCopyWith<$Res>
    implements $ProductResponseCopyWith<$Res> {
  factory _$ProductResponseCopyWith(
          _ProductResponse value, $Res Function(_ProductResponse) then) =
      __$ProductResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
      @JsonKey(name: 'merchant_id')
          int? merchantId,
      String? name,
      String? category,
      String? stock,
      String? thumbnail,
      String? description,
      @JsonKey(name: 'created_at')
          DateTime? createdAt,
      @JsonKey(name: 'updateAt')
          DateTime? updatedAt,
      @JsonKey(name: 'product_prices')
          List<ProductPriceResponse>? productPrices,
      @JsonKey(name: 'product_price_quantities')
          List<ProductPriceResponse>? productPriceQuantities,
      @JsonKey(name: 'product_price_quantity')
          ProductPriceResponse? productPriceQuantity,
      PromoResponse? promo});

  @override
  $ProductPriceResponseCopyWith<$Res>? get productPriceQuantity;
  @override
  $PromoResponseCopyWith<$Res>? get promo;
}

/// @nodoc
class __$ProductResponseCopyWithImpl<$Res>
    extends _$ProductResponseCopyWithImpl<$Res>
    implements _$ProductResponseCopyWith<$Res> {
  __$ProductResponseCopyWithImpl(
      _ProductResponse _value, $Res Function(_ProductResponse) _then)
      : super(_value, (v) => _then(v as _ProductResponse));

  @override
  _ProductResponse get _value => super._value as _ProductResponse;

  @override
  $Res call({
    Object? id = freezed,
    Object? merchantId = freezed,
    Object? name = freezed,
    Object? category = freezed,
    Object? stock = freezed,
    Object? thumbnail = freezed,
    Object? description = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? productPrices = freezed,
    Object? productPriceQuantities = freezed,
    Object? productPriceQuantity = freezed,
    Object? promo = freezed,
  }) {
    return _then(_ProductResponse(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      merchantId: merchantId == freezed
          ? _value.merchantId
          : merchantId // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      stock: stock == freezed
          ? _value.stock
          : stock // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnail: thumbnail == freezed
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      productPrices: productPrices == freezed
          ? _value.productPrices
          : productPrices // ignore: cast_nullable_to_non_nullable
              as List<ProductPriceResponse>?,
      productPriceQuantities: productPriceQuantities == freezed
          ? _value.productPriceQuantities
          : productPriceQuantities // ignore: cast_nullable_to_non_nullable
              as List<ProductPriceResponse>?,
      productPriceQuantity: productPriceQuantity == freezed
          ? _value.productPriceQuantity
          : productPriceQuantity // ignore: cast_nullable_to_non_nullable
              as ProductPriceResponse?,
      promo: promo == freezed
          ? _value.promo
          : promo // ignore: cast_nullable_to_non_nullable
              as PromoResponse?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProductResponse extends _ProductResponse {
  const _$_ProductResponse(
      {required this.id,
      @JsonKey(name: 'merchant_id')
          required this.merchantId,
      required this.name,
      required this.category,
      required this.stock,
      required this.thumbnail,
      required this.description,
      @JsonKey(name: 'created_at')
          required this.createdAt,
      @JsonKey(name: 'updateAt')
          required this.updatedAt,
      @JsonKey(name: 'product_prices')
          required this.productPrices,
      @JsonKey(name: 'product_price_quantities')
          required this.productPriceQuantities,
      @JsonKey(name: 'product_price_quantity')
          required this.productPriceQuantity,
      required this.promo})
      : super._();

  factory _$_ProductResponse.fromJson(Map<String, dynamic> json) =>
      _$$_ProductResponseFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: 'merchant_id')
  final int? merchantId;
  @override
  final String? name;
  @override
  final String? category;
  @override
  final String? stock;
  @override
  final String? thumbnail;
  @override
  final String? description;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @override
  @JsonKey(name: 'updateAt')
  final DateTime? updatedAt;
  @override
  @JsonKey(name: 'product_prices')
  final List<ProductPriceResponse>? productPrices;
  @override
  @JsonKey(name: 'product_price_quantities')
  final List<ProductPriceResponse>? productPriceQuantities;
  @override
  @JsonKey(name: 'product_price_quantity')
  final ProductPriceResponse? productPriceQuantity;
  @override
  final PromoResponse? promo;

  @override
  String toString() {
    return 'ProductResponse(id: $id, merchantId: $merchantId, name: $name, category: $category, stock: $stock, thumbnail: $thumbnail, description: $description, createdAt: $createdAt, updatedAt: $updatedAt, productPrices: $productPrices, productPriceQuantities: $productPriceQuantities, productPriceQuantity: $productPriceQuantity, promo: $promo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ProductResponse &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other.merchantId, merchantId) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.category, category) &&
            const DeepCollectionEquality().equals(other.stock, stock) &&
            const DeepCollectionEquality().equals(other.thumbnail, thumbnail) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt) &&
            const DeepCollectionEquality()
                .equals(other.productPrices, productPrices) &&
            const DeepCollectionEquality()
                .equals(other.productPriceQuantities, productPriceQuantities) &&
            const DeepCollectionEquality()
                .equals(other.productPriceQuantity, productPriceQuantity) &&
            const DeepCollectionEquality().equals(other.promo, promo));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(merchantId),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(category),
      const DeepCollectionEquality().hash(stock),
      const DeepCollectionEquality().hash(thumbnail),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(updatedAt),
      const DeepCollectionEquality().hash(productPrices),
      const DeepCollectionEquality().hash(productPriceQuantities),
      const DeepCollectionEquality().hash(productPriceQuantity),
      const DeepCollectionEquality().hash(promo));

  @JsonKey(ignore: true)
  @override
  _$ProductResponseCopyWith<_ProductResponse> get copyWith =>
      __$ProductResponseCopyWithImpl<_ProductResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductResponseToJson(this);
  }
}

abstract class _ProductResponse extends ProductResponse {
  const factory _ProductResponse(
      {required int? id,
      @JsonKey(name: 'merchant_id')
          required int? merchantId,
      required String? name,
      required String? category,
      required String? stock,
      required String? thumbnail,
      required String? description,
      @JsonKey(name: 'created_at')
          required DateTime? createdAt,
      @JsonKey(name: 'updateAt')
          required DateTime? updatedAt,
      @JsonKey(name: 'product_prices')
          required List<ProductPriceResponse>? productPrices,
      @JsonKey(name: 'product_price_quantities')
          required List<ProductPriceResponse>? productPriceQuantities,
      @JsonKey(name: 'product_price_quantity')
          required ProductPriceResponse? productPriceQuantity,
      required PromoResponse? promo}) = _$_ProductResponse;
  const _ProductResponse._() : super._();

  factory _ProductResponse.fromJson(Map<String, dynamic> json) =
      _$_ProductResponse.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: 'merchant_id')
  int? get merchantId;
  @override
  String? get name;
  @override
  String? get category;
  @override
  String? get stock;
  @override
  String? get thumbnail;
  @override
  String? get description;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @override
  @JsonKey(name: 'updateAt')
  DateTime? get updatedAt;
  @override
  @JsonKey(name: 'product_prices')
  List<ProductPriceResponse>? get productPrices;
  @override
  @JsonKey(name: 'product_price_quantities')
  List<ProductPriceResponse>? get productPriceQuantities;
  @override
  @JsonKey(name: 'product_price_quantity')
  ProductPriceResponse? get productPriceQuantity;
  @override
  PromoResponse? get promo;
  @override
  @JsonKey(ignore: true)
  _$ProductResponseCopyWith<_ProductResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
