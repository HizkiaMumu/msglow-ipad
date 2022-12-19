import 'package:freezed_annotation/freezed_annotation.dart';

import '../penjualan/product.dart';

part 'transaction_order_product.freezed.dart';

@freezed
class TransactionOrderProduct with _$TransactionOrderProduct {
  const factory TransactionOrderProduct({
    required int? id,
    required int? orderId,
    required int? orderExpeditionId,
    required int? productId,
    required int? amount,
    required String? costCategory,
    required int? costPerItem,
    required int? total,
    required String? status,
    required String? note,
    required DateTime? createdAt,
    required DateTime? updatedAt,
    required Product? product,
    required bool? isPreOrder,
  }) = _TransactionOrderProduct;
}
