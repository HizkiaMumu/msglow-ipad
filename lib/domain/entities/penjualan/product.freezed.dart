// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'product.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ProductTearOff {
  const _$ProductTearOff();

  _Product call(
      {int? id,
      int? merchantId,
      required String? name,
      String? category,
      String? stock,
      String? thumbnail,
      required String? description,
      DateTime? createdAt,
      DateTime? updatedAt,
      List<ProductPrice>? productPrices,
      required List<ProductPrice>? productPriceQuantities,
      required ProductPrice? productPriceQuantity,
      PromoResponse? promo,
      required bool isProductPackage}) {
    return _Product(
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
      isProductPackage: isProductPackage,
    );
  }
}

/// @nodoc
const $Product = _$ProductTearOff();

/// @nodoc
mixin _$Product {
  int? get id => throw _privateConstructorUsedError;
  int? get merchantId => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get category => throw _privateConstructorUsedError;
  String? get stock => throw _privateConstructorUsedError;
  String? get thumbnail => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  List<ProductPrice>? get productPrices => throw _privateConstructorUsedError;
  List<ProductPrice>? get productPriceQuantities =>
      throw _privateConstructorUsedError;
  ProductPrice? get productPriceQuantity => throw _privateConstructorUsedError;
  PromoResponse? get promo => throw _privateConstructorUsedError;
  bool get isProductPackage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProductCopyWith<Product> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductCopyWith<$Res> {
  factory $ProductCopyWith(Product value, $Res Function(Product) then) =
      _$ProductCopyWithImpl<$Res>;
  $Res call(
      {int? id,
      int? merchantId,
      String? name,
      String? category,
      String? stock,
      String? thumbnail,
      String? description,
      DateTime? createdAt,
      DateTime? updatedAt,
      List<ProductPrice>? productPrices,
      List<ProductPrice>? productPriceQuantities,
      ProductPrice? productPriceQuantity,
      PromoResponse? promo,
      bool isProductPackage});

  $ProductPriceCopyWith<$Res>? get productPriceQuantity;
  $PromoResponseCopyWith<$Res>? get promo;
}

/// @nodoc
class _$ProductCopyWithImpl<$Res> implements $ProductCopyWith<$Res> {
  _$ProductCopyWithImpl(this._value, this._then);

  final Product _value;
  // ignore: unused_field
  final $Res Function(Product) _then;

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
    Object? isProductPackage = freezed,
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
              as List<ProductPrice>?,
      productPriceQuantities: productPriceQuantities == freezed
          ? _value.productPriceQuantities
          : productPriceQuantities // ignore: cast_nullable_to_non_nullable
              as List<ProductPrice>?,
      productPriceQuantity: productPriceQuantity == freezed
          ? _value.productPriceQuantity
          : productPriceQuantity // ignore: cast_nullable_to_non_nullable
              as ProductPrice?,
      promo: promo == freezed
          ? _value.promo
          : promo // ignore: cast_nullable_to_non_nullable
              as PromoResponse?,
      isProductPackage: isProductPackage == freezed
          ? _value.isProductPackage
          : isProductPackage // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  @override
  $ProductPriceCopyWith<$Res>? get productPriceQuantity {
    if (_value.productPriceQuantity == null) {
      return null;
    }

    return $ProductPriceCopyWith<$Res>(_value.productPriceQuantity!, (value) {
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
abstract class _$ProductCopyWith<$Res> implements $ProductCopyWith<$Res> {
  factory _$ProductCopyWith(_Product value, $Res Function(_Product) then) =
      __$ProductCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
      int? merchantId,
      String? name,
      String? category,
      String? stock,
      String? thumbnail,
      String? description,
      DateTime? createdAt,
      DateTime? updatedAt,
      List<ProductPrice>? productPrices,
      List<ProductPrice>? productPriceQuantities,
      ProductPrice? productPriceQuantity,
      PromoResponse? promo,
      bool isProductPackage});

  @override
  $ProductPriceCopyWith<$Res>? get productPriceQuantity;
  @override
  $PromoResponseCopyWith<$Res>? get promo;
}

/// @nodoc
class __$ProductCopyWithImpl<$Res> extends _$ProductCopyWithImpl<$Res>
    implements _$ProductCopyWith<$Res> {
  __$ProductCopyWithImpl(_Product _value, $Res Function(_Product) _then)
      : super(_value, (v) => _then(v as _Product));

  @override
  _Product get _value => super._value as _Product;

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
    Object? isProductPackage = freezed,
  }) {
    return _then(_Product(
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
              as List<ProductPrice>?,
      productPriceQuantities: productPriceQuantities == freezed
          ? _value.productPriceQuantities
          : productPriceQuantities // ignore: cast_nullable_to_non_nullable
              as List<ProductPrice>?,
      productPriceQuantity: productPriceQuantity == freezed
          ? _value.productPriceQuantity
          : productPriceQuantity // ignore: cast_nullable_to_non_nullable
              as ProductPrice?,
      promo: promo == freezed
          ? _value.promo
          : promo // ignore: cast_nullable_to_non_nullable
              as PromoResponse?,
      isProductPackage: isProductPackage == freezed
          ? _value.isProductPackage
          : isProductPackage // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_Product extends _Product {
  const _$_Product(
      {this.id,
      this.merchantId,
      required this.name,
      this.category,
      this.stock,
      this.thumbnail,
      required this.description,
      this.createdAt,
      this.updatedAt,
      this.productPrices,
      required this.productPriceQuantities,
      required this.productPriceQuantity,
      this.promo,
      required this.isProductPackage})
      : super._();

  @override
  final int? id;
  @override
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
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;
  @override
  final List<ProductPrice>? productPrices;
  @override
  final List<ProductPrice>? productPriceQuantities;
  @override
  final ProductPrice? productPriceQuantity;
  @override
  final PromoResponse? promo;
  @override
  final bool isProductPackage;

  @override
  String toString() {
    return 'Product(id: $id, merchantId: $merchantId, name: $name, category: $category, stock: $stock, thumbnail: $thumbnail, description: $description, createdAt: $createdAt, updatedAt: $updatedAt, productPrices: $productPrices, productPriceQuantities: $productPriceQuantities, productPriceQuantity: $productPriceQuantity, promo: $promo, isProductPackage: $isProductPackage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Product &&
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
            const DeepCollectionEquality().equals(other.promo, promo) &&
            const DeepCollectionEquality()
                .equals(other.isProductPackage, isProductPackage));
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
      const DeepCollectionEquality().hash(promo),
      const DeepCollectionEquality().hash(isProductPackage));

  @JsonKey(ignore: true)
  @override
  _$ProductCopyWith<_Product> get copyWith =>
      __$ProductCopyWithImpl<_Product>(this, _$identity);
}

abstract class _Product extends Product {
  const factory _Product(
      {int? id,
      int? merchantId,
      required String? name,
      String? category,
      String? stock,
      String? thumbnail,
      required String? description,
      DateTime? createdAt,
      DateTime? updatedAt,
      List<ProductPrice>? productPrices,
      required List<ProductPrice>? productPriceQuantities,
      required ProductPrice? productPriceQuantity,
      PromoResponse? promo,
      required bool isProductPackage}) = _$_Product;
  const _Product._() : super._();

  @override
  int? get id;
  @override
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
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  List<ProductPrice>? get productPrices;
  @override
  List<ProductPrice>? get productPriceQuantities;
  @override
  ProductPrice? get productPriceQuantity;
  @override
  PromoResponse? get promo;
  @override
  bool get isProductPackage;
  @override
  @JsonKey(ignore: true)
  _$ProductCopyWith<_Product> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$CostCategoryTearOff {
  const _$CostCategoryTearOff();

  _CostCategory call(
      {required int id,
      required String name,
      required String code,
      required String amount,
      int? promoId}) {
    return _CostCategory(
      id: id,
      name: name,
      code: code,
      amount: amount,
      promoId: promoId,
    );
  }
}

/// @nodoc
const $CostCategory = _$CostCategoryTearOff();

/// @nodoc
mixin _$CostCategory {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;
  String get amount => throw _privateConstructorUsedError;
  int? get promoId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CostCategoryCopyWith<CostCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CostCategoryCopyWith<$Res> {
  factory $CostCategoryCopyWith(
          CostCategory value, $Res Function(CostCategory) then) =
      _$CostCategoryCopyWithImpl<$Res>;
  $Res call({int id, String name, String code, String amount, int? promoId});
}

/// @nodoc
class _$CostCategoryCopyWithImpl<$Res> implements $CostCategoryCopyWith<$Res> {
  _$CostCategoryCopyWithImpl(this._value, this._then);

  final CostCategory _value;
  // ignore: unused_field
  final $Res Function(CostCategory) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? code = freezed,
    Object? amount = freezed,
    Object? promoId = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String,
      promoId: promoId == freezed
          ? _value.promoId
          : promoId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$CostCategoryCopyWith<$Res>
    implements $CostCategoryCopyWith<$Res> {
  factory _$CostCategoryCopyWith(
          _CostCategory value, $Res Function(_CostCategory) then) =
      __$CostCategoryCopyWithImpl<$Res>;
  @override
  $Res call({int id, String name, String code, String amount, int? promoId});
}

/// @nodoc
class __$CostCategoryCopyWithImpl<$Res> extends _$CostCategoryCopyWithImpl<$Res>
    implements _$CostCategoryCopyWith<$Res> {
  __$CostCategoryCopyWithImpl(
      _CostCategory _value, $Res Function(_CostCategory) _then)
      : super(_value, (v) => _then(v as _CostCategory));

  @override
  _CostCategory get _value => super._value as _CostCategory;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? code = freezed,
    Object? amount = freezed,
    Object? promoId = freezed,
  }) {
    return _then(_CostCategory(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String,
      promoId: promoId == freezed
          ? _value.promoId
          : promoId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$_CostCategory implements _CostCategory {
  const _$_CostCategory(
      {required this.id,
      required this.name,
      required this.code,
      required this.amount,
      this.promoId});

  @override
  final int id;
  @override
  final String name;
  @override
  final String code;
  @override
  final String amount;
  @override
  final int? promoId;

  @override
  String toString() {
    return 'CostCategory(id: $id, name: $name, code: $code, amount: $amount, promoId: $promoId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CostCategory &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.code, code) &&
            const DeepCollectionEquality().equals(other.amount, amount) &&
            const DeepCollectionEquality().equals(other.promoId, promoId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(code),
      const DeepCollectionEquality().hash(amount),
      const DeepCollectionEquality().hash(promoId));

  @JsonKey(ignore: true)
  @override
  _$CostCategoryCopyWith<_CostCategory> get copyWith =>
      __$CostCategoryCopyWithImpl<_CostCategory>(this, _$identity);
}

abstract class _CostCategory implements CostCategory {
  const factory _CostCategory(
      {required int id,
      required String name,
      required String code,
      required String amount,
      int? promoId}) = _$_CostCategory;

  @override
  int get id;
  @override
  String get name;
  @override
  String get code;
  @override
  String get amount;
  @override
  int? get promoId;
  @override
  @JsonKey(ignore: true)
  _$CostCategoryCopyWith<_CostCategory> get copyWith =>
      throw _privateConstructorUsedError;
}
