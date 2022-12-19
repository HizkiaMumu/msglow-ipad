// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'transaction_order_product.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$TransactionOrderProductTearOff {
  const _$TransactionOrderProductTearOff();

  _TransactionOrderProduct call(
      {required int? id,
      required int? orderId,
      required int? orderExpeditionId,
      required int? productId,
      required int? amount,
      required String? costCategory,
      required int? costPerItem,
      required int? total,
      required String? status,
      required String? note,
      required DateTime? createdAt,
      required DateTime? updatedAt,
      required Product? product,
      required bool? isPreOrder}) {
    return _TransactionOrderProduct(
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
      product: product,
      isPreOrder: isPreOrder,
    );
  }
}

/// @nodoc
const $TransactionOrderProduct = _$TransactionOrderProductTearOff();

/// @nodoc
mixin _$TransactionOrderProduct {
  int? get id => throw _privateConstructorUsedError;
  int? get orderId => throw _privateConstructorUsedError;
  int? get orderExpeditionId => throw _privateConstructorUsedError;
  int? get productId => throw _privateConstructorUsedError;
  int? get amount => throw _privateConstructorUsedError;
  String? get costCategory => throw _privateConstructorUsedError;
  int? get costPerItem => throw _privateConstructorUsedError;
  int? get total => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  String? get note => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  Product? get product => throw _privateConstructorUsedError;
  bool? get isPreOrder => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TransactionOrderProductCopyWith<TransactionOrderProduct> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionOrderProductCopyWith<$Res> {
  factory $TransactionOrderProductCopyWith(TransactionOrderProduct value,
          $Res Function(TransactionOrderProduct) then) =
      _$TransactionOrderProductCopyWithImpl<$Res>;
  $Res call(
      {int? id,
      int? orderId,
      int? orderExpeditionId,
      int? productId,
      int? amount,
      String? costCategory,
      int? costPerItem,
      int? total,
      String? status,
      String? note,
      DateTime? createdAt,
      DateTime? updatedAt,
      Product? product,
      bool? isPreOrder});

  $ProductCopyWith<$Res>? get product;
}

/// @nodoc
class _$TransactionOrderProductCopyWithImpl<$Res>
    implements $TransactionOrderProductCopyWith<$Res> {
  _$TransactionOrderProductCopyWithImpl(this._value, this._then);

  final TransactionOrderProduct _value;
  // ignore: unused_field
  final $Res Function(TransactionOrderProduct) _then;

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
    Object? product = freezed,
    Object? isPreOrder = freezed,
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
      product: product == freezed
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product?,
      isPreOrder: isPreOrder == freezed
          ? _value.isPreOrder
          : isPreOrder // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }

  @override
  $ProductCopyWith<$Res>? get product {
    if (_value.product == null) {
      return null;
    }

    return $ProductCopyWith<$Res>(_value.product!, (value) {
      return _then(_value.copyWith(product: value));
    });
  }
}

/// @nodoc
abstract class _$TransactionOrderProductCopyWith<$Res>
    implements $TransactionOrderProductCopyWith<$Res> {
  factory _$TransactionOrderProductCopyWith(_TransactionOrderProduct value,
          $Res Function(_TransactionOrderProduct) then) =
      __$TransactionOrderProductCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
      int? orderId,
      int? orderExpeditionId,
      int? productId,
      int? amount,
      String? costCategory,
      int? costPerItem,
      int? total,
      String? status,
      String? note,
      DateTime? createdAt,
      DateTime? updatedAt,
      Product? product,
      bool? isPreOrder});

  @override
  $ProductCopyWith<$Res>? get product;
}

/// @nodoc
class __$TransactionOrderProductCopyWithImpl<$Res>
    extends _$TransactionOrderProductCopyWithImpl<$Res>
    implements _$TransactionOrderProductCopyWith<$Res> {
  __$TransactionOrderProductCopyWithImpl(_TransactionOrderProduct _value,
      $Res Function(_TransactionOrderProduct) _then)
      : super(_value, (v) => _then(v as _TransactionOrderProduct));

  @override
  _TransactionOrderProduct get _value =>
      super._value as _TransactionOrderProduct;

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
    Object? product = freezed,
    Object? isPreOrder = freezed,
  }) {
    return _then(_TransactionOrderProduct(
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
      product: product == freezed
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product?,
      isPreOrder: isPreOrder == freezed
          ? _value.isPreOrder
          : isPreOrder // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$_TransactionOrderProduct implements _TransactionOrderProduct {
  const _$_TransactionOrderProduct(
      {required this.id,
      required this.orderId,
      required this.orderExpeditionId,
      required this.productId,
      required this.amount,
      required this.costCategory,
      required this.costPerItem,
      required this.total,
      required this.status,
      required this.note,
      required this.createdAt,
      required this.updatedAt,
      required this.product,
      required this.isPreOrder});

  @override
  final int? id;
  @override
  final int? orderId;
  @override
  final int? orderExpeditionId;
  @override
  final int? productId;
  @override
  final int? amount;
  @override
  final String? costCategory;
  @override
  final int? costPerItem;
  @override
  final int? total;
  @override
  final String? status;
  @override
  final String? note;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;
  @override
  final Product? product;
  @override
  final bool? isPreOrder;

  @override
  String toString() {
    return 'TransactionOrderProduct(id: $id, orderId: $orderId, orderExpeditionId: $orderExpeditionId, productId: $productId, amount: $amount, costCategory: $costCategory, costPerItem: $costPerItem, total: $total, status: $status, note: $note, createdAt: $createdAt, updatedAt: $updatedAt, product: $product, isPreOrder: $isPreOrder)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TransactionOrderProduct &&
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
            const DeepCollectionEquality().equals(other.product, product) &&
            const DeepCollectionEquality()
                .equals(other.isPreOrder, isPreOrder));
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
      const DeepCollectionEquality().hash(product),
      const DeepCollectionEquality().hash(isPreOrder));

  @JsonKey(ignore: true)
  @override
  _$TransactionOrderProductCopyWith<_TransactionOrderProduct> get copyWith =>
      __$TransactionOrderProductCopyWithImpl<_TransactionOrderProduct>(
          this, _$identity);
}

abstract class _TransactionOrderProduct implements TransactionOrderProduct {
  const factory _TransactionOrderProduct(
      {required int? id,
      required int? orderId,
      required int? orderExpeditionId,
      required int? productId,
      required int? amount,
      required String? costCategory,
      required int? costPerItem,
      required int? total,
      required String? status,
      required String? note,
      required DateTime? createdAt,
      required DateTime? updatedAt,
      required Product? product,
      required bool? isPreOrder}) = _$_TransactionOrderProduct;

  @override
  int? get id;
  @override
  int? get orderId;
  @override
  int? get orderExpeditionId;
  @override
  int? get productId;
  @override
  int? get amount;
  @override
  String? get costCategory;
  @override
  int? get costPerItem;
  @override
  int? get total;
  @override
  String? get status;
  @override
  String? get note;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  Product? get product;
  @override
  bool? get isPreOrder;
  @override
  @JsonKey(ignore: true)
  _$TransactionOrderProductCopyWith<_TransactionOrderProduct> get copyWith =>
      throw _privateConstructorUsedError;
}
