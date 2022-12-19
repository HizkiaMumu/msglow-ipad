// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../domain/entities/penjualan/product.dart';
import 'product_price_response.dart';
import 'promo_response.dart';

part 'product_response.freezed.dart';

part 'product_response.g.dart';

@freezed
class ProductResponse with _$ProductResponse {
  const ProductResponse._();

  const factory ProductResponse({
    required int? id,
    @JsonKey(name: 'merchant_id') required int? merchantId,
    required String? name,
    required String? category,
    required String? stock,
    required String? thumbnail,
    required String? description,
    @JsonKey(name: 'created_at') required DateTime? createdAt,
    @JsonKey(name: 'updateAt') required DateTime? updatedAt,
    @JsonKey(name: 'product_prices') required List<ProductPriceResponse>? productPrices,
    @JsonKey(name: 'product_price_quantities') required List<ProductPriceResponse>? productPriceQuantities,
    @JsonKey(name: 'product_price_quantity') required ProductPriceResponse? productPriceQuantity,
    required PromoResponse? promo,
  }) = _ProductResponse;

  factory ProductResponse.fromJson(Map<String, dynamic> json) => _$ProductResponseFromJson(json);

  Product toDomain() => Product(
      id: id,
      merchantId: merchantId,
      name: name,
      category: category,
      stock: stock,
      thumbnail: thumbnail,
      description: description,
      createdAt: createdAt,
      updatedAt: updatedAt,
      productPrices: productPrices?.map((e) => e.toDomain()).toList(),
      productPriceQuantities: productPriceQuantities?.map((e) => e.toDomain()).toList(),
      productPriceQuantity: productPriceQuantity?.toDomain(),
      promo: promo,
      isProductPackage: false);
}
