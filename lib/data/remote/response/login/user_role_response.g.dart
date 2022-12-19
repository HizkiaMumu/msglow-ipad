// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_role_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserRoleResponse _$$_UserRoleResponseFromJson(Map<String, dynamic> json) =>
    _$_UserRoleResponse(
      id: json['id'] as int?,
      merchantId: json['merchant_id'] as int?,
      name: json['name'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      merchant: json['merchant'] == null
          ? null
          : MerchantResponse.fromJson(json['merchant'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_UserRoleResponseToJson(_$_UserRoleResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'merchant_id': instance.merchantId,
      'name': instance.name,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'merchant': instance.merchant,
    };
