// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'refund_order_request.freezed.dart';
part 'refund_order_request.g.dart';

@freezed
class RefundOrderRequest with _$RefundOrderRequest {
  const factory RefundOrderRequest({
    @JsonKey(name: 'order_id') required int orderId,
    required String notes,
  }) = _RefundOrderRequest;

  factory RefundOrderRequest.fromJson(Map<String, dynamic> json) =>
      _$RefundOrderRequestFromJson(json);
}
