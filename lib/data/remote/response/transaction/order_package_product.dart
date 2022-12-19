import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_package_product.freezed.dart';
part 'order_package_product.g.dart';

@freezed
class OrderPackageProduct with _$OrderPackageProduct {
  const OrderPackageProduct._();

  const factory OrderPackageProduct({
    @JsonKey(name: "id") required int? id,
    @JsonKey(name: "image") required String? image,
    @JsonKey(name: "name") required String? name,
    @JsonKey(name: "price") required double? price,
    @JsonKey(name: "hpp") required double? hpp,
    @JsonKey(name: "created_at") required String? created_at,
    @JsonKey(name: "updated_at") required String? updated_at,
  }) = _OrderPackageProduct;

  factory OrderPackageProduct.fromJson(Map<String, dynamic> json) =>
      _$OrderPackageProductFromJson(json);
}
