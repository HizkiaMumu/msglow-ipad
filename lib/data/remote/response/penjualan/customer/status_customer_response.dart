import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../domain/entities/penjualan/customer/status_customer.dart';

part 'status_customer_response.freezed.dart';

part 'status_customer_response.g.dart';

@freezed
class StatusCustomerResponse with _$StatusCustomerResponse {
  const StatusCustomerResponse._();

  const factory StatusCustomerResponse({
    required int? id,
    @JsonKey(name: 'merchant_id') required int? merchantId,
    required String? title,
    @JsonKey(name: 'created_at') required DateTime? createdAt,
    @JsonKey(name: 'update_at') required DateTime? updatedAt,
  }) = _StatusCustomerResponse;

  factory StatusCustomerResponse.fromJson(Map<String, dynamic> json) =>
      _$StatusCustomerResponseFromJson(json);

  StatusCustomer toDomain() => StatusCustomer(
        id: id,
        merchantId: merchantId,
        title: title,
        createdAt: createdAt,
        updatedAt: updatedAt,
      );
}
