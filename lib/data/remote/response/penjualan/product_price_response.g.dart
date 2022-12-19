// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_price_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProductPriceResponse _$$_ProductPriceResponseFromJson(
        Map<String, dynamic> json) =>
    _$_ProductPriceResponse(
      id: json['id'] as int?,
      productId: json['product_id'] as int?,
      quantity: json['quantity'] as String?,
      price: json['price'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['update_at'] == null
          ? null
          : DateTime.parse(json['update_at'] as String),
      statusCustomerId: json['status_customer_id'] as int?,
    );

Map<String, dynamic> _$$_ProductPriceResponseToJson(
        _$_ProductPriceResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'product_id': instance.productId,
      'quantity': instance.quantity,
      'price': instance.price,
      'created_at': instance.createdAt?.toIso8601String(),
      'update_at': instance.updatedAt?.toIso8601String(),
      'status_customer_id': instance.statusCustomerId,
    };
