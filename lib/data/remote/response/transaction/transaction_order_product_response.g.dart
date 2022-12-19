// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_order_product_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TransactionOrderProductResponse _$$_TransactionOrderProductResponseFromJson(
        Map<String, dynamic> json) =>
    _$_TransactionOrderProductResponse(
      id: json['id'] as int?,
      orderId: json['order_id'] as int?,
      orderExpeditionId: json['order_expedition_id'] as int?,
      productId: json['product_id'] as int?,
      amount: json['amount'] as int?,
      costCategory: json['cost_category'] as String?,
      costPerItem: json['cost_per_item'] as int?,
      total: json['total'] as int?,
      status: json['status'] as String?,
      note: json['note'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      isPreOrder: json['is_pre_order'] as int?,
      product: json['product'] == null
          ? null
          : ProductResponse.fromJson(json['product'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_TransactionOrderProductResponseToJson(
        _$_TransactionOrderProductResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'order_id': instance.orderId,
      'order_expedition_id': instance.orderExpeditionId,
      'product_id': instance.productId,
      'amount': instance.amount,
      'cost_category': instance.costCategory,
      'cost_per_item': instance.costPerItem,
      'total': instance.total,
      'status': instance.status,
      'note': instance.note,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'is_pre_order': instance.isPreOrder,
      'product': instance.product,
    };
