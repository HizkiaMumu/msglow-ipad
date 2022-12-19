import 'package:freezed_annotation/freezed_annotation.dart';

import 'status_customer_response.dart';

part 'status_customer_list_response.freezed.dart';

part 'status_customer_list_response.g.dart';

@freezed
abstract class StatusCustomerListResponse with _$StatusCustomerListResponse {
  const factory StatusCustomerListResponse({
    @JsonKey(name: 'status_customers')
        required List<StatusCustomerResponse>? statusCustomers,
  }) = _StatusCustomerListResponse;

  factory StatusCustomerListResponse.fromJson(Map<String, dynamic> json) =>
      _$StatusCustomerListResponseFromJson(json);
}
