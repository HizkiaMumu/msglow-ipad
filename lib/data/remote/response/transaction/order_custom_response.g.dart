// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_custom_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OrderCustomResponse _$$_OrderCustomResponseFromJson(
        Map<String, dynamic> json) =>
    _$_OrderCustomResponse(
      id: json['id'] as int?,
      orderId: json['order_id'] as int?,
      product: json['product'] as String?,
      price: json['price'] as String?,
      description: json['description'] as String?,
      quantity: json['quantity'] as String?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
    );

Map<String, dynamic> _$$_OrderCustomResponseToJson(
        _$_OrderCustomResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'order_id': instance.orderId,
      'product': instance.product,
      'price': instance.price,
      'description': instance.description,
      'quantity': instance.quantity,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };
