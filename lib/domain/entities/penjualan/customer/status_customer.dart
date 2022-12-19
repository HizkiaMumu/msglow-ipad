import 'package:freezed_annotation/freezed_annotation.dart';

part 'status_customer.freezed.dart';

@freezed
class StatusCustomer with _$StatusCustomer {
  const factory StatusCustomer({
    required int? id,
    required int? merchantId,
    required String? title,
    required DateTime? createdAt,
    required DateTime? updatedAt,
  }) = _StatusCustomer;
}
