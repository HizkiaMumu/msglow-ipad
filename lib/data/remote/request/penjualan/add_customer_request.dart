// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_customer_request.freezed.dart';
part 'add_customer_request.g.dart';

@freezed
class AddCustomerRequest with _$AddCustomerRequest {
  const factory AddCustomerRequest({
    @JsonKey(name: 'status_customer_id') int? statusCustomerId,
    @JsonKey(name: 'full_name') required String fullName,
    @JsonKey(name: 'phone_number') required String phoneNumber,
    @JsonKey(name: 'number_id') required String numberId,
    required String address,
  }) = _AddCustomerRequest;

  factory AddCustomerRequest.fromJson(Map<String, dynamic> json) =>
      _$AddCustomerRequestFromJson(json);
}
