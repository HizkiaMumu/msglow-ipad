// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_customer_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AddCustomerRequest _$$_AddCustomerRequestFromJson(
        Map<String, dynamic> json) =>
    _$_AddCustomerRequest(
      statusCustomerId: json['status_customer_id'] as int?,
      fullName: json['full_name'] as String,
      phoneNumber: json['phone_number'] as String,
      numberId: json['number_id'] as String,
      address: json['address'] as String,
    );

Map<String, dynamic> _$$_AddCustomerRequestToJson(
        _$_AddCustomerRequest instance) =>
    <String, dynamic>{
      'status_customer_id': instance.statusCustomerId,
      'full_name': instance.fullName,
      'phone_number': instance.phoneNumber,
      'number_id': instance.numberId,
      'address': instance.address,
    };
