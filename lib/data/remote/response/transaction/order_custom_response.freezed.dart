// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'order_custom_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OrderCustomResponse _$OrderCustomResponseFromJson(Map<String, dynamic> json) {
  return _OrderCustomResponse.fromJson(json);
}

/// @nodoc
class _$OrderCustomResponseTearOff {
  const _$OrderCustomResponseTearOff();

  _OrderCustomResponse call(
      {required int? id,
      @JsonKey(name: 'order_id') required int? orderId,
      required String? product,
      required String? price,
      required String? description,
      required String? quantity,
      @JsonKey(name: 'created_at') required String? createdAt,
      @JsonKey(name: 'updated_at') required String? updatedAt}) {
    return _OrderCustomResponse(
      id: id,
      orderId: orderId,
      product: product,
      price: price,
      description: description,
      quantity: quantity,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }

  OrderCustomResponse fromJson(Map<String, Object?> json) {
    return OrderCustomResponse.fromJson(json);
  }
}

/// @nodoc
const $OrderCustomResponse = _$OrderCustomResponseTearOff();

/// @nodoc
mixin _$OrderCustomResponse {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'order_id')
  int? get orderId => throw _privateConstructorUsedError;
  String? get product => throw _privateConstructorUsedError;
  String? get price => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get quantity => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  String? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderCustomResponseCopyWith<OrderCustomResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderCustomResponseCopyWith<$Res> {
  factory $OrderCustomResponseCopyWith(
          OrderCustomResponse value, $Res Function(OrderCustomResponse) then) =
      _$OrderCustomResponseCopyWithImpl<$Res>;
  $Res call(
      {int? id,
      @JsonKey(name: 'order_id') int? orderId,
      String? product,
      String? price,
      String? description,
      String? quantity,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'updated_at') String? updatedAt});
}

/// @nodoc
class _$OrderCustomResponseCopyWithImpl<$Res>
    implements $OrderCustomResponseCopyWith<$Res> {
  _$OrderCustomResponseCopyWithImpl(this._value, this._then);

  final OrderCustomResponse _value;
  // ignore: unused_field
  final $Res Function(OrderCustomResponse) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? orderId = freezed,
    Object? product = freezed,
    Object? price = freezed,
    Object? description = freezed,
    Object? quantity = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      orderId: orderId == freezed
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as int?,
      product: product == freezed
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as String?,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      quantity: quantity == freezed
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$OrderCustomResponseCopyWith<$Res>
    implements $OrderCustomResponseCopyWith<$Res> {
  factory _$OrderCustomResponseCopyWith(_OrderCustomResponse value,
          $Res Function(_OrderCustomResponse) then) =
      __$OrderCustomResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
      @JsonKey(name: 'order_id') int? orderId,
      String? product,
      String? price,
      String? description,
      String? quantity,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'updated_at') String? updatedAt});
}

/// @nodoc
class __$OrderCustomResponseCopyWithImpl<$Res>
    extends _$OrderCustomResponseCopyWithImpl<$Res>
    implements _$OrderCustomResponseCopyWith<$Res> {
  __$OrderCustomResponseCopyWithImpl(
      _OrderCustomResponse _value, $Res Function(_OrderCustomResponse) _then)
      : super(_value, (v) => _then(v as _OrderCustomResponse));

  @override
  _OrderCustomResponse get _value => super._value as _OrderCustomResponse;

  @override
  $Res call({
    Object? id = freezed,
    Object? orderId = freezed,
    Object? product = freezed,
    Object? price = freezed,
    Object? description = freezed,
    Object? quantity = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_OrderCustomResponse(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      orderId: orderId == freezed
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as int?,
      product: product == freezed
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as String?,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      quantity: quantity == freezed
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OrderCustomResponse extends _OrderCustomResponse {
  const _$_OrderCustomResponse(
      {required this.id,
      @JsonKey(name: 'order_id') required this.orderId,
      required this.product,
      required this.price,
      required this.description,
      required this.quantity,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'updated_at') required this.updatedAt})
      : super._();

  factory _$_OrderCustomResponse.fromJson(Map<String, dynamic> json) =>
      _$$_OrderCustomResponseFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: 'order_id')
  final int? orderId;
  @override
  final String? product;
  @override
  final String? price;
  @override
  final String? description;
  @override
  final String? quantity;
  @override
  @JsonKey(name: 'created_at')
  final String? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final String? updatedAt;

  @override
  String toString() {
    return 'OrderCustomResponse(id: $id, orderId: $orderId, product: $product, price: $price, description: $description, quantity: $quantity, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OrderCustomResponse &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.orderId, orderId) &&
            const DeepCollectionEquality().equals(other.product, product) &&
            const DeepCollectionEquality().equals(other.price, price) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.quantity, quantity) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(orderId),
      const DeepCollectionEquality().hash(product),
      const DeepCollectionEquality().hash(price),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(quantity),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(updatedAt));

  @JsonKey(ignore: true)
  @override
  _$OrderCustomResponseCopyWith<_OrderCustomResponse> get copyWith =>
      __$OrderCustomResponseCopyWithImpl<_OrderCustomResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OrderCustomResponseToJson(this);
  }
}

abstract class _OrderCustomResponse extends OrderCustomResponse {
  const factory _OrderCustomResponse(
          {required int? id,
          @JsonKey(name: 'order_id') required int? orderId,
          required String? product,
          required String? price,
          required String? description,
          required String? quantity,
          @JsonKey(name: 'created_at') required String? createdAt,
          @JsonKey(name: 'updated_at') required String? updatedAt}) =
      _$_OrderCustomResponse;
  const _OrderCustomResponse._() : super._();

  factory _OrderCustomResponse.fromJson(Map<String, dynamic> json) =
      _$_OrderCustomResponse.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: 'order_id')
  int? get orderId;
  @override
  String? get product;
  @override
  String? get price;
  @override
  String? get description;
  @override
  String? get quantity;
  @override
  @JsonKey(name: 'created_at')
  String? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  String? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$OrderCustomResponseCopyWith<_OrderCustomResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
