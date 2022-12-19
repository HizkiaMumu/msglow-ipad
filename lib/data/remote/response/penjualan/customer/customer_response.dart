import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../domain/entities/penjualan/customer/customer.dart';
import 'customer_element_response.dart';

part 'customer_response.freezed.dart';

part 'customer_response.g.dart';

@freezed
class CustomerResponse with _$CustomerResponse {
  const CustomerResponse._();

  const factory CustomerResponse({
    required List<CustomerElementResponse>? customers,
    required String? status,
    @JsonKey(name: 'status_code') required String? statusCode,
    required String? message,
  }) = _CustomerResponse;

  factory CustomerResponse.fromJson(Map<String, dynamic> json) =>
      _$CustomerResponseFromJson(json);

  Customer toDomain() => Customer(
        customers: customers?.map((e) => e.toDomain()).toList(),
        status: status,
        statusCode: statusCode,
        message: message,
      );
}
