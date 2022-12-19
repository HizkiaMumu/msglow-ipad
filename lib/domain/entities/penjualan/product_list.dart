import 'package:freezed_annotation/freezed_annotation.dart';

import 'product.dart';

part 'product_list.freezed.dart';

@freezed
class ProductList with _$ProductList {
  const factory ProductList({
    required List<Product>? products,
    required String? status,
    required String? statusCode,
    required String? message,
  }) = _ProductList;
}
