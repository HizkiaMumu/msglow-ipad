// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../domain/entities/penjualan/product_list.dart';
import 'product_response.dart';

part 'product_list_response.freezed.dart';
part 'product_list_response.g.dart';

@freezed
class ProductListResponse with _$ProductListResponse {
  const ProductListResponse._();

  const factory ProductListResponse({
    required List<ProductResponse>? products,
    required String? status,
    @JsonKey(name: 'status_code') required String? statusCode,
    required String? message,
  }) = _ProductListResponse;

  factory ProductListResponse.fromJson(Map<String, dynamic> json) =>
      _$ProductListResponseFromJson(json);

  ProductList toDomain() => ProductList(
        products: products?.map((e) => e.toDomain()).toList(),
        status: status,
        statusCode: statusCode,
        message: message,
      );
}
