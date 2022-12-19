import 'package:equatable/equatable.dart';

import 'customer/customer_element.dart';
import 'product.dart';

class OrderProduct extends Equatable {
  final Product product;
  final int quantity;
  final CostCategory? costCategory;
  final bool isCustomProduct;
  final bool isProductPakage;
  final String note;
  final bool isPreOrder;

  const OrderProduct({
    required this.product,
    this.quantity = 1,
    this.costCategory,
    this.isCustomProduct = false,
    required this.isProductPakage,
    this.note = '',
    this.isPreOrder = false,
  });

  String getMatchedPriceString(CustomerElement? customerElement) {
    if (costCategory == null || customerElement == null && costCategory!.id == 1) {
      return product.productPriceQuantities?.first.price ?? '0';
    }

    return costCategory?.amount ?? '0';
  }

  int getTotalPerProduct(CustomerElement? customerElement) {
    return int.parse(getMatchedPriceString(customerElement)) * quantity;
  }

  int get getSubtotalPerProduct => int.parse(product.productPriceQuantities?.first.price ?? '0') * quantity;

  OrderProduct copyWith({
    Product? product,
    int? quantity,
    CostCategory? costCategory,
    bool? isCustomProduct,
    bool? isProductPackage,
    String? note,
    bool? isPreOrder,
  }) {
    return OrderProduct(
      product: product ?? this.product,
      quantity: quantity ?? this.quantity,
      costCategory: costCategory ?? this.costCategory,
      isCustomProduct: isCustomProduct ?? this.isCustomProduct,
      isProductPakage: isProductPackage ?? isProductPakage,
      note: note ?? this.note,
      isPreOrder: isPreOrder ?? this.isPreOrder,
    );
  }

  @override
  List<Object?> get props => [
        product,
        quantity,
        costCategory,
        isCustomProduct,
        isProductPakage,
        note,
        isPreOrder,
      ];
}
