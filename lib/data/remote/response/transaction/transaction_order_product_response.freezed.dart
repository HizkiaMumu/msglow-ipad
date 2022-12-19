// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'transaction_order_product_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TransactionOrderProductResponse _$TransactionOrderProductResponseFromJson(
    Map<String, dynamic> json) {
  return _TransactionOrderProductResponse.fromJson(json);
}

/// @nodoc
class _$TransactionOrderProductResponseTearOff {
  const _$TransactionOrderProductResponseTearOff();

  _TransactionOrderProductResponse call(
      {required int? id,
      @JsonKey(name: 'order_id') required int? orderId,
      @JsonKey(name: 'order_expedition_id') required int? orderExpeditionId,
      @JsonKey(name: 'product_id') required int? productId,
      required int? amount,
      @JsonKey(name: 'cost_category') required String? costCategory,
      @JsonKey(name: 'cost_per_item') required int? costPerItem,
      required int? total,
      required String? status,
      required String? note,
      @JsonKey(name: 'created_at') required DateTime? createdAt,
      @JsonKey(name: 'updated_at') required DateTime? updatedAt,
      @JsonKey(name: 'is_pre_order') required int? isPreOrder,
      required ProductResponse? product}) {
    return _TransactionOrderProductResponse(
      id: id,
      orderId: orderId,
      orderExpeditionId: orderExpeditionId,
      productId: productId,
      amount: amount,
      costCategory: costCategory,
      costPerItem: costPerItem,
      total: total,
      status: status,
      note: note,
      createdAt: createdAt,
      updatedAt: updatedAt,
      isPreOrder: isPreOrder,
      product: product,
    );
  }

  TransactionOrderProductResponse fromJson(Map<String, Object?> json) {
    return TransactionOrderProductResponse.fromJson(json);
  }
}

/// @nodoc
const $TransactionOrderProductResponse =
    _$TransactionOrderProductResponseTearOff();

/// @nodoc
mixin _$TransactionOrderProductResponse {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'order_id')
  int? get orderId => throw _privateConstructorUsedError;
  @JsonKey(name: 'order_expedition_id')
  int? get orderExpeditionId => throw _privateConstructorUsedError;
  @JsonKey(name: 'product_id')
  int? get productId => throw _privateConstructorUsedError;
  int? get amount => throw _privateConstructorUsedError;
  @JsonKey(name: 'cost_category')
  String? get costCategory => throw _privateConstructorUsedError;
  @JsonKey(name: 'cost_per_item')
  int? get costPerItem => throw _privateConstructorUsedError;
  int? get total => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  String? get note => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_pre_order')
  int? get isPreOrder => throw _privateConstructorUsedError;
  ProductResponse? get product => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TransactionOrderProductResponseCopyWith<TransactionOrderProductResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionOrderProductResponseCopyWith<$Res> {
  factory $TransactionOrderProductResponseCopyWith(
          TransactionOrderProductResponse value,
          $Res Function(TransactionOrderProductResponse) then) =
      _$TransactionOrderProductResponseCopyWithImpl<$Res>;
  $Res call(
      {int? id,
      @JsonKey(name: 'order_id') int? orderId,
      @JsonKey(name: 'order_expedition_id') int? orderExpeditionId,
      @JsonKey(name: 'product_id') int? productId,
      int? amount,
      @JsonKey(name: 'cost_category') String? costCategory,
      @JsonKey(name: 'cost_per_item') int? costPerItem,
      int? total,
      String? status,
      String? note,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      @JsonKey(name: 'is_pre_order') int? isPreOrder,
      ProductResponse? product});

  $ProductResponseCopyWith<$Res>? get product;
}

/// @nodoc
class _$TransactionOrderProductResponseCopyWithImpl<$Res>
    implements $TransactionOrderProductResponseCopyWith<$Res> {
  _$TransactionOrderProductResponseCopyWithImpl(this._value, this._then);

  final TransactionOrderProductResponse _value;
  // ignore: unused_field
  final $Res Function(TransactionOrderProductResponse) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? orderId = freezed,
    Object? orderExpeditionId = freezed,
    Object? productId = freezed,
    Object? amount = freezed,
    Object? costCategory = freezed,
    Object? costPerItem = freezed,
    Object? total = freezed,
    Object? status = freezed,
    Object? note = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? isPreOrder = freezed,
    Object? product = freezed,
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
      orderExpeditionId: orderExpeditionId == freezed
          ? _value.orderExpeditionId
          : orderExpeditionId // ignore: cast_nullable_to_non_nullable
              as int?,
      productId: productId == freezed
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int?,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int?,
      costCategory: costCategory == freezed
          ? _value.costCategory
          : costCategory // ignore: cast_nullable_to_non_nullable
              as String?,
      costPerItem: costPerItem == freezed
          ? _value.costPerItem
          : costPerItem // ignore: cast_nullable_to_non_nullable
              as int?,
      total: total == freezed
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      note: note == freezed
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isPreOrder: isPreOrder == freezed
          ? _value.isPreOrder
          : isPreOrder // ignore: cast_nullable_to_non_nullable
              as int?,
      product: product == freezed
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProductResponse?,
    ));
  }

  @override
  $ProductResponseCopyWith<$Res>? get product {
    if (_value.product == null) {
      return null;
    }

    return $ProductResponseCopyWith<$Res>(_value.product!, (value) {
      return _then(_value.copyWith(product: value));
    });
  }
}

/// @nodoc
abstract class _$TransactionOrderProductResponseCopyWith<$Res>
    implements $TransactionOrderProductResponseCopyWith<$Res> {
  factory _$TransactionOrderProductResponseCopyWith(
          _TransactionOrderProductResponse value,
          $Res Function(_TransactionOrderProductResponse) then) =
      __$TransactionOrderProductResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
      @JsonKey(name: 'order_id') int? orderId,
      @JsonKey(name: 'order_expedition_id') int? orderExpeditionId,
      @JsonKey(name: 'product_id') int? productId,
      int? amount,
      @JsonKey(name: 'cost_category') String? costCategory,
      @JsonKey(name: 'cost_per_item') int? costPerItem,
      int? total,
      String? status,
      String? note,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      @JsonKey(name: 'is_pre_order') int? isPreOrder,
      ProductResponse? product});

  @override
  $ProductResponseCopyWith<$Res>? get product;
}

/// @nodoc
class __$TransactionOrderProductResponseCopyWithImpl<$Res>
    extends _$TransactionOrderProductResponseCopyWithImpl<$Res>
    implements _$TransactionOrderProductResponseCopyWith<$Res> {
  __$TransactionOrderProductResponseCopyWithImpl(
      _TransactionOrderProductResponse _value,
      $Res Function(_TransactionOrderProductResponse) _then)
      : super(_value, (v) => _then(v as _TransactionOrderProductResponse));

  @override
  _TransactionOrderProductResponse get _value =>
      super._value as _TransactionOrderProductResponse;

  @override
  $Res call({
    Object? id = freezed,
    Object? orderId = freezed,
    Object? orderExpeditionId = freezed,
    Object? productId = freezed,
    Object? amount = freezed,
    Object? costCategory = freezed,
    Object? costPerItem = freezed,
    Object? total = freezed,
    Object? status = freezed,
    Object? note = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? isPreOrder = freezed,
    Object? product = freezed,
  }) {
    return _then(_TransactionOrderProductResponse(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      orderId: orderId == freezed
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as int?,
      orderExpeditionId: orderExpeditionId == freezed
          ? _value.orderExpeditionId
          : orderExpeditionId // ignore: cast_nullable_to_non_nullable
              as int?,
      productId: productId == freezed
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int?,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int?,
      costCategory: costCategory == freezed
          ? _value.costCategory
          : costCategory // ignore: cast_nullable_to_non_nullable
              as String?,
      costPerItem: costPerItem == freezed
          ? _value.costPerItem
          : costPerItem // ignore: cast_nullable_to_non_nullable
              as int?,
      total: total == freezed
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      note: note == freezed
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isPreOrder: isPreOrder == freezed
          ? _value.isPreOrder
          : isPreOrder // ignore: cast_nullable_to_non_nullable
              as int?,
      product: product == freezed
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProductResponse?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TransactionOrderProductResponse
    extends _TransactionOrderProductResponse {
  const _$_TransactionOrderProductResponse(
      {required this.id,
      @JsonKey(name: 'order_id') required this.orderId,
      @JsonKey(name: 'order_expedition_id') required this.orderExpeditionId,
      @JsonKey(name: 'product_id') required this.productId,
      required this.amount,
      @JsonKey(name: 'cost_category') required this.costCategory,
      @JsonKey(name: 'cost_per_item') required this.costPerItem,
      required this.total,
      required this.status,
      required this.note,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'updated_at') required this.updatedAt,
      @JsonKey(name: 'is_pre_order') required this.isPreOrder,
      required this.product})
      : super._();

  factory _$_TransactionOrderProductResponse.fromJson(
          Map<String, dynamic> json) =>
      _$$_TransactionOrderProductResponseFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: 'order_id')
  final int? orderId;
  @override
  @JsonKey(name: 'order_expedition_id')
  final int? orderExpeditionId;
  @override
  @JsonKey(name: 'product_id')
  final int? productId;
  @override
  final int? amount;
  @override
  @JsonKey(name: 'cost_category')
  final String? costCategory;
  @override
  @JsonKey(name: 'cost_per_item')
  final int? costPerItem;
  @override
  final int? total;
  @override
  final String? status;
  @override
  final String? note;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;
  @override
  @JsonKey(name: 'is_pre_order')
  final int? isPreOrder;
  @override
  final ProductResponse? product;

  @override
  String toString() {
    return 'TransactionOrderProductResponse(id: $id, orderId: $orderId, orderExpeditionId: $orderExpeditionId, productId: $productId, amount: $amount, costCategory: $costCategory, costPerItem: $costPerItem, total: $total, status: $status, note: $note, createdAt: $createdAt, updatedAt: $updatedAt, isPreOrder: $isPreOrder, product: $product)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TransactionOrderProductResponse &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.orderId, orderId) &&
            const DeepCollectionEquality()
                .equals(other.orderExpeditionId, orderExpeditionId) &&
            const DeepCollectionEquality().equals(other.productId, productId) &&
            const DeepCollectionEquality().equals(other.amount, amount) &&
            const DeepCollectionEquality()
                .equals(other.costCategory, costCategory) &&
            const DeepCollectionEquality()
                .equals(other.costPerItem, costPerItem) &&
            const DeepCollectionEquality().equals(other.total, total) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.note, note) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt) &&
            const DeepCollectionEquality()
                .equals(other.isPreOrder, isPreOrder) &&
            const DeepCollectionEquality().equals(other.product, product));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(orderId),
      const DeepCollectionEquality().hash(orderExpeditionId),
      const DeepCollectionEquality().hash(productId),
      const DeepCollectionEquality().hash(amount),
      const DeepCollectionEquality().hash(costCategory),
      const DeepCollectionEquality().hash(costPerItem),
      const DeepCollectionEquality().hash(total),
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(note),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(updatedAt),
      const DeepCollectionEquality().hash(isPreOrder),
      const DeepCollectionEquality().hash(product));

  @JsonKey(ignore: true)
  @override
  _$TransactionOrderProductResponseCopyWith<_TransactionOrderProductResponse>
      get copyWith => __$TransactionOrderProductResponseCopyWithImpl<
          _TransactionOrderProductResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TransactionOrderProductResponseToJson(this);
  }
}

abstract class _TransactionOrderProductResponse
    extends TransactionOrderProductResponse {
  const factory _TransactionOrderProductResponse(
      {required int? id,
      @JsonKey(name: 'order_id') required int? orderId,
      @JsonKey(name: 'order_expedition_id') required int? orderExpeditionId,
      @JsonKey(name: 'product_id') required int? productId,
      required int? amount,
      @JsonKey(name: 'cost_category') required String? costCategory,
      @JsonKey(name: 'cost_per_item') required int? costPerItem,
      required int? total,
      required String? status,
      required String? note,
      @JsonKey(name: 'created_at') required DateTime? createdAt,
      @JsonKey(name: 'updated_at') required DateTime? updatedAt,
      @JsonKey(name: 'is_pre_order') required int? isPreOrder,
      required ProductResponse? product}) = _$_TransactionOrderProductResponse;
  const _TransactionOrderProductResponse._() : super._();

  factory _TransactionOrderProductResponse.fromJson(Map<String, dynamic> json) =
      _$_TransactionOrderProductResponse.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: 'order_id')
  int? get orderId;
  @override
  @JsonKey(name: 'order_expedition_id')
  int? get orderExpeditionId;
  @override
  @JsonKey(name: 'product_id')
  int? get productId;
  @override
  int? get amount;
  @override
  @JsonKey(name: 'cost_category')
  String? get costCategory;
  @override
  @JsonKey(name: 'cost_per_item')
  int? get costPerItem;
  @override
  int? get total;
  @override
  String? get status;
  @override
  String? get note;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt;
  @override
  @JsonKey(name: 'is_pre_order')
  int? get isPreOrder;
  @override
  ProductResponse? get product;
  @override
  @JsonKey(ignore: true)
  _$TransactionOrderProductResponseCopyWith<_TransactionOrderProductResponse>
      get copyWith => throw _privateConstructorUsedError;
}
