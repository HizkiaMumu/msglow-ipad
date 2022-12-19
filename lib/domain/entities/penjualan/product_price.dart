import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_price.freezed.dart';

@freezed
class ProductPrice with _$ProductPrice {
  const factory ProductPrice({
    int? id,
    int? productId,
    required String? quantity,
    required String? price,
    DateTime? createdAt,
    DateTime? updatedAt,
    int? statusCustomerId,
  }) = _ProductPrice;
}
