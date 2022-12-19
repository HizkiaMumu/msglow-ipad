// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../domain/entities/transaction/order_custom.dart';

part 'order_custom_response.freezed.dart';

part 'order_custom_response.g.dart';

@freezed
class OrderCustomResponse with _$OrderCustomResponse {
  const OrderCustomResponse._();

  const factory OrderCustomResponse({
    required int? id,
    @JsonKey(name: 'order_id') required int? orderId,
    required String? product,
    required String? price,
    required String? description,
    required String? quantity,
    @JsonKey(name: 'created_at') required String? createdAt,
    @JsonKey(name: 'updated_at') required String? updatedAt,
  }) = _OrderCustomResponse;

  factory OrderCustomResponse.fromJson(Map<String, dynamic> json) =>
      _$OrderCustomResponseFromJson(json);

  OrderCustom toDomain() => OrderCustom(
        id: id,
        orderId: orderId,
        product: product,
        price: price,
        description: description,
        quantity: quantity,
        createdAt: createdAt,
        updatedAt: updatedAt,
      );
}
