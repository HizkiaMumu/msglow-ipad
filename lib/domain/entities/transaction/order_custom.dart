// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_custom.freezed.dart';

@freezed
class OrderCustom with _$OrderCustom {
  const factory OrderCustom({
    required int? id,
    required int? orderId,
    required String? product,
    required String? price,
    required String? description,
    required String? quantity,
    required String? createdAt,
    required String? updatedAt,
  }) = _OrderCustom;
}
