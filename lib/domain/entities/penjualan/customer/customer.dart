import 'package:freezed_annotation/freezed_annotation.dart';

import 'customer_element.dart';

part 'customer.freezed.dart';

@freezed
class Customer with _$Customer {
  const factory Customer({
    required List<CustomerElement>? customers,
    required String? status,
    required String? statusCode,
    required String? message,
  }) = _Customer;
}
