import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../domain/entities/penjualan/product_price.dart';

part 'product_price_response.freezed.dart';

part 'product_price_response.g.dart';

@freezed
class ProductPriceResponse with _$ProductPriceResponse {
  const ProductPriceResponse._();

  const factory ProductPriceResponse({
    required int? id,
    @JsonKey(name: 'product_id') required int? productId,
    required String? quantity,
    required String? price,
    @JsonKey(name: 'created_at') required DateTime? createdAt,
    @JsonKey(name: 'update_at') required DateTime? updatedAt,
    @JsonKey(name: 'status_customer_id') required int? statusCustomerId,
  }) = _ProductPriceResponse;

  factory ProductPriceResponse.fromJson(Map<String, dynamic> json) =>
      _$ProductPriceResponseFromJson(json);

  ProductPrice toDomain() => ProductPrice(
        id: id,
        productId: productId,
        quantity: quantity,
        price: price,
        createdAt: createdAt,
        updatedAt: updatedAt,
        statusCustomerId: statusCustomerId,
      );
}
