// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'merchant.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Merchant _$$_MerchantFromJson(Map<String, dynamic> json) => _$_Merchant(
      id: json['id'] as int?,
      name: json['name'] as String?,
      province: json['province'] as String?,
      city: json['city'] as String?,
      subdistrict: json['subdistrict'] as String?,
      address: json['address'] as String?,
      provinceId: json['province_id'] as String?,
      subdistrictId: json['subdistrict_id'] as String?,
      cityId: json['city_id'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$_MerchantToJson(_$_Merchant instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'province': instance.province,
      'city': instance.city,
      'subdistrict': instance.subdistrict,
      'address': instance.address,
      'province_id': instance.provinceId,
      'subdistrict_id': instance.subdistrictId,
      'city_id': instance.cityId,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };
