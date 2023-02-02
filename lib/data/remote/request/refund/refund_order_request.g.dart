// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'refund_order_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RefundOrderRequest _$$_RefundOrderRequestFromJson(
        Map<String, dynamic> json) =>
    _$_RefundOrderRequest(
      orderId: json['order_id'] as int,
      notes: json['notes'] as String,
    );

Map<String, dynamic> _$$_RefundOrderRequestToJson(
        _$_RefundOrderRequest instance) =>
    <String, dynamic>{
      'order_id': instance.orderId,
      'notes': instance.notes,
    };
