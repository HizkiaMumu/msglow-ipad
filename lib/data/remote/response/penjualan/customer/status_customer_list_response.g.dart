// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'status_customer_list_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_StatusCustomerListResponse _$$_StatusCustomerListResponseFromJson(
        Map<String, dynamic> json) =>
    _$_StatusCustomerListResponse(
      statusCustomers: (json['status_customers'] as List<dynamic>?)
          ?.map(
              (e) => StatusCustomerResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_StatusCustomerListResponseToJson(
        _$_StatusCustomerListResponse instance) =>
    <String, dynamic>{
      'status_customers': instance.statusCustomers,
    };
