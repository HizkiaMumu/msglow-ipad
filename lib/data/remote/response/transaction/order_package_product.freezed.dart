// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'order_package_product.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OrderPackageProduct _$OrderPackageProductFromJson(Map<String, dynamic> json) {
  return _OrderPackageProduct.fromJson(json);
}

/// @nodoc
class _$OrderPackageProductTearOff {
  const _$OrderPackageProductTearOff();

  _OrderPackageProduct call(
      {@JsonKey(name: "id") required int? id,
      @JsonKey(name: "image") required String? image,
      @JsonKey(name: "name") required String? name,
      @JsonKey(name: "price") required double? price,
      @JsonKey(name: "hpp") required double? hpp,
      @JsonKey(name: "created_at") required String? created_at,
      @JsonKey(name: "updated_at") required String? updated_at}) {
    return _OrderPackageProduct(
      id: id,
      image: image,
      name: name,
      price: price,
      hpp: hpp,
      created_at: created_at,
      updated_at: updated_at,
    );
  }

  OrderPackageProduct fromJson(Map<String, Object?> json) {
    return OrderPackageProduct.fromJson(json);
  }
}

/// @nodoc
const $OrderPackageProduct = _$OrderPackageProductTearOff();

/// @nodoc
mixin _$OrderPackageProduct {
  @JsonKey(name: "id")
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "image")
  String? get image => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: "price")
  double? get price => throw _privateConstructorUsedError;
  @JsonKey(name: "hpp")
  double? get hpp => throw _privateConstructorUsedError;
  @JsonKey(name: "created_at")
  String? get created_at => throw _privateConstructorUsedError;
  @JsonKey(name: "updated_at")
  String? get updated_at => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderPackageProductCopyWith<OrderPackageProduct> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderPackageProductCopyWith<$Res> {
  factory $OrderPackageProductCopyWith(
          OrderPackageProduct value, $Res Function(OrderPackageProduct) then) =
      _$OrderPackageProductCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "image") String? image,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "price") double? price,
      @JsonKey(name: "hpp") double? hpp,
      @JsonKey(name: "created_at") String? created_at,
      @JsonKey(name: "updated_at") String? updated_at});
}

/// @nodoc
class _$OrderPackageProductCopyWithImpl<$Res>
    implements $OrderPackageProductCopyWith<$Res> {
  _$OrderPackageProductCopyWithImpl(this._value, this._then);

  final OrderPackageProduct _value;
  // ignore: unused_field
  final $Res Function(OrderPackageProduct) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? image = freezed,
    Object? name = freezed,
    Object? price = freezed,
    Object? hpp = freezed,
    Object? created_at = freezed,
    Object? updated_at = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      hpp: hpp == freezed
          ? _value.hpp
          : hpp // ignore: cast_nullable_to_non_nullable
              as double?,
      created_at: created_at == freezed
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as String?,
      updated_at: updated_at == freezed
          ? _value.updated_at
          : updated_at // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$OrderPackageProductCopyWith<$Res>
    implements $OrderPackageProductCopyWith<$Res> {
  factory _$OrderPackageProductCopyWith(_OrderPackageProduct value,
          $Res Function(_OrderPackageProduct) then) =
      __$OrderPackageProductCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "image") String? image,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "price") double? price,
      @JsonKey(name: "hpp") double? hpp,
      @JsonKey(name: "created_at") String? created_at,
      @JsonKey(name: "updated_at") String? updated_at});
}

/// @nodoc
class __$OrderPackageProductCopyWithImpl<$Res>
    extends _$OrderPackageProductCopyWithImpl<$Res>
    implements _$OrderPackageProductCopyWith<$Res> {
  __$OrderPackageProductCopyWithImpl(
      _OrderPackageProduct _value, $Res Function(_OrderPackageProduct) _then)
      : super(_value, (v) => _then(v as _OrderPackageProduct));

  @override
  _OrderPackageProduct get _value => super._value as _OrderPackageProduct;

  @override
  $Res call({
    Object? id = freezed,
    Object? image = freezed,
    Object? name = freezed,
    Object? price = freezed,
    Object? hpp = freezed,
    Object? created_at = freezed,
    Object? updated_at = freezed,
  }) {
    return _then(_OrderPackageProduct(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      hpp: hpp == freezed
          ? _value.hpp
          : hpp // ignore: cast_nullable_to_non_nullable
              as double?,
      created_at: created_at == freezed
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as String?,
      updated_at: updated_at == freezed
          ? _value.updated_at
          : updated_at // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OrderPackageProduct extends _OrderPackageProduct {
  const _$_OrderPackageProduct(
      {@JsonKey(name: "id") required this.id,
      @JsonKey(name: "image") required this.image,
      @JsonKey(name: "name") required this.name,
      @JsonKey(name: "price") required this.price,
      @JsonKey(name: "hpp") required this.hpp,
      @JsonKey(name: "created_at") required this.created_at,
      @JsonKey(name: "updated_at") required this.updated_at})
      : super._();

  factory _$_OrderPackageProduct.fromJson(Map<String, dynamic> json) =>
      _$$_OrderPackageProductFromJson(json);

  @override
  @JsonKey(name: "id")
  final int? id;
  @override
  @JsonKey(name: "image")
  final String? image;
  @override
  @JsonKey(name: "name")
  final String? name;
  @override
  @JsonKey(name: "price")
  final double? price;
  @override
  @JsonKey(name: "hpp")
  final double? hpp;
  @override
  @JsonKey(name: "created_at")
  final String? created_at;
  @override
  @JsonKey(name: "updated_at")
  final String? updated_at;

  @override
  String toString() {
    return 'OrderPackageProduct(id: $id, image: $image, name: $name, price: $price, hpp: $hpp, created_at: $created_at, updated_at: $updated_at)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OrderPackageProduct &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.image, image) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.price, price) &&
            const DeepCollectionEquality().equals(other.hpp, hpp) &&
            const DeepCollectionEquality()
                .equals(other.created_at, created_at) &&
            const DeepCollectionEquality()
                .equals(other.updated_at, updated_at));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(image),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(price),
      const DeepCollectionEquality().hash(hpp),
      const DeepCollectionEquality().hash(created_at),
      const DeepCollectionEquality().hash(updated_at));

  @JsonKey(ignore: true)
  @override
  _$OrderPackageProductCopyWith<_OrderPackageProduct> get copyWith =>
      __$OrderPackageProductCopyWithImpl<_OrderPackageProduct>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OrderPackageProductToJson(this);
  }
}

abstract class _OrderPackageProduct extends OrderPackageProduct {
  const factory _OrderPackageProduct(
          {@JsonKey(name: "id") required int? id,
          @JsonKey(name: "image") required String? image,
          @JsonKey(name: "name") required String? name,
          @JsonKey(name: "price") required double? price,
          @JsonKey(name: "hpp") required double? hpp,
          @JsonKey(name: "created_at") required String? created_at,
          @JsonKey(name: "updated_at") required String? updated_at}) =
      _$_OrderPackageProduct;
  const _OrderPackageProduct._() : super._();

  factory _OrderPackageProduct.fromJson(Map<String, dynamic> json) =
      _$_OrderPackageProduct.fromJson;

  @override
  @JsonKey(name: "id")
  int? get id;
  @override
  @JsonKey(name: "image")
  String? get image;
  @override
  @JsonKey(name: "name")
  String? get name;
  @override
  @JsonKey(name: "price")
  double? get price;
  @override
  @JsonKey(name: "hpp")
  double? get hpp;
  @override
  @JsonKey(name: "created_at")
  String? get created_at;
  @override
  @JsonKey(name: "updated_at")
  String? get updated_at;
  @override
  @JsonKey(ignore: true)
  _$OrderPackageProductCopyWith<_OrderPackageProduct> get copyWith =>
      throw _privateConstructorUsedError;
}
