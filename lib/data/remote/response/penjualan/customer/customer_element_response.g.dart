// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_element_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CustomerElementResponse _$$_CustomerElementResponseFromJson(
        Map<String, dynamic> json) =>
    _$_CustomerElementResponse(
      id: json['id'] as int?,
      statusCustomerId: json['status_customer_id'] as int?,
      fullName: json['full_name'] as String?,
      birthPlace: json['birth_place'] as String?,
      birthDate: json['birth_data'] == null
          ? null
          : DateTime.parse(json['birth_data'] as String),
      address: json['address'] as String?,
      phoneNumber: json['phone_number'] as String?,
      email: json['email'] as String?,
      provinceId: json['province_id'] as int?,
      province: json['province'] as String?,
      cityId: json['city_id'] as int?,
      city: json['city'] as String?,
      subdistrictId: json['subdistrict_id'] as int?,
      subdistrict: json['subdistrict'] as String?,
      addressStore: json['address_store'] as String?,
      numberId: json['number_id'] as String?,
      instagram: json['instagram'] as String?,
      facebook: json['facebook'] as String?,
      shopee: json['shopee'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      statusCustomer: json['status_customer'] == null
          ? null
          : StatusCustomerResponse.fromJson(
              json['status_customer'] as Map<String, dynamic>),
      avatar: json['avatar'] as String?,
    );

Map<String, dynamic> _$$_CustomerElementResponseToJson(
        _$_CustomerElementResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'status_customer_id': instance.statusCustomerId,
      'full_name': instance.fullName,
      'birth_place': instance.birthPlace,
      'birth_data': instance.birthDate?.toIso8601String(),
      'address': instance.address,
      'phone_number': instance.phoneNumber,
      'email': instance.email,
      'province_id': instance.provinceId,
      'province': instance.province,
      'city_id': instance.cityId,
      'city': instance.city,
      'subdistrict_id': instance.subdistrictId,
      'subdistrict': instance.subdistrict,
      'address_store': instance.addressStore,
      'number_id': instance.numberId,
      'instagram': instance.instagram,
      'facebook': instance.facebook,
      'shopee': instance.shopee,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'status_customer': instance.statusCustomer,
      'avatar': instance.avatar,
    };
