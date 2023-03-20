// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'refund_item_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RefundItemRequest _$$_RefundItemRequestFromJson(Map<String, dynamic> json) =>
    _$_RefundItemRequest(
      orderId: json['order_id'] as int,
      productId: json['product_id'] as int,
    );

Map<String, dynamic> _$$_RefundItemRequestToJson(
        _$_RefundItemRequest instance) =>
    <String, dynamic>{
      'order_id': instance.orderId,
      'product_id': instance.productId,
    };
