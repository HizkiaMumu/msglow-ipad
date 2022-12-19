// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'status_customer_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_StatusCustomerResponse _$$_StatusCustomerResponseFromJson(
        Map<String, dynamic> json) =>
    _$_StatusCustomerResponse(
      id: json['id'] as int?,
      merchantId: json['merchant_id'] as int?,
      title: json['title'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['update_at'] == null
          ? null
          : DateTime.parse(json['update_at'] as String),
    );

Map<String, dynamic> _$$_StatusCustomerResponseToJson(
        _$_StatusCustomerResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'merchant_id': instance.merchantId,
      'title': instance.title,
      'created_at': instance.createdAt?.toIso8601String(),
      'update_at': instance.updatedAt?.toIso8601String(),
    };
