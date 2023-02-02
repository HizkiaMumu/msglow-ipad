// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'refund_item_request.freezed.dart';
part 'refund_item_request.g.dart';

@freezed
class RefundItemRequest with _$RefundItemRequest {
  const factory RefundItemRequest({
    @JsonKey(name: 'order_id') required int orderId,
    @JsonKey(name: 'product_id') required int productId,
  }) = _RefundItemRequest;

  factory RefundItemRequest.fromJson(Map<String, dynamic> json) =>
      _$RefundItemRequestFromJson(json);
}
