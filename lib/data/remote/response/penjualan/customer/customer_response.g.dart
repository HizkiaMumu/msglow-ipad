// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CustomerResponse _$$_CustomerResponseFromJson(Map<String, dynamic> json) =>
    _$_CustomerResponse(
      customers: (json['customers'] as List<dynamic>?)
          ?.map((e) =>
              CustomerElementResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      status: json['status'] as String?,
      statusCode: json['status_code'] as String?,
      message: json['message'] as String?,
    );

Map<String, dynamic> _$$_CustomerResponseToJson(_$_CustomerResponse instance) =>
    <String, dynamic>{
      'customers': instance.customers,
      'status': instance.status,
      'status_code': instance.statusCode,
      'message': instance.message,
    };
