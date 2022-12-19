// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../domain/entities/transaction/transaction_order_product.dart';
import '../penjualan/product_response.dart';

part 'transaction_order_product_response.freezed.dart';

part 'transaction_order_product_response.g.dart';

@freezed
class TransactionOrderProductResponse with _$TransactionOrderProductResponse {
  const TransactionOrderProductResponse._();

  const factory TransactionOrderProductResponse({
    required int? id,
    @JsonKey(name: 'order_id') required int? orderId,
    @JsonKey(name: 'order_expedition_id') required int? orderExpeditionId,
    @JsonKey(name: 'product_id') required int? productId,
    required int? amount,
    @JsonKey(name: 'cost_category') required String? costCategory,
    @JsonKey(name: 'cost_per_item') required int? costPerItem,
    required int? total,
    required String? status,
    required String? note,
    @JsonKey(name: 'created_at') required DateTime? createdAt,
    @JsonKey(name: 'updated_at') required DateTime? updatedAt,
    @JsonKey(name: 'is_pre_order') required int? isPreOrder,
    required ProductResponse? product,
  }) = _TransactionOrderProductResponse;

  factory TransactionOrderProductResponse.fromJson(Map<String, dynamic> json) =>
      _$TransactionOrderProductResponseFromJson(json);

  TransactionOrderProduct toDomain() => TransactionOrderProduct(
        id: id,
        orderId: orderId,
        orderExpeditionId: orderExpeditionId,
        productId: productId,
        amount: amount,
        costCategory: costCategory,
        costPerItem: costPerItem,
        total: total,
        status: status,
        note: note,
        createdAt: createdAt,
        updatedAt: updatedAt,
        isPreOrder: isPreOrder == 1,
        product: product?.toDomain(),
      );
}
