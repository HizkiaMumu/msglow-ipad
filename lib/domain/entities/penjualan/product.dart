import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/remote/response/penjualan/promo_response.dart';
import 'customer/customer_element.dart';
import 'product_price.dart';

part 'product.freezed.dart';

@freezed
class Product with _$Product {
  const Product._();

  const factory Product({
    int? id,
    int? merchantId,
    required String? name,
    String? category,
    String? stock,
    String? thumbnail,
    required String? description,
    DateTime? createdAt,
    DateTime? updatedAt,
    List<ProductPrice>? productPrices,
    required List<ProductPrice>? productPriceQuantities,
    required ProductPrice? productPriceQuantity,
    PromoResponse? promo,
    required bool isProductPackage,
  }) = _Product;

  int getStandardPriceInInt() {
    return int.parse(productPriceQuantities?.first.price ?? '0');
  }

  String get standardPrice {
    return productPriceQuantities?.first.price ?? '0';
  }

  List<CostCategory> getCostCategories(CustomerElement? customer) {
    final _costCategories = List<CostCategory>.empty(growable: true);
    _costCategories.add(
      CostCategory(
        id: 0,
        name: 'Standar',
        code: '1',
        amount: standardPrice,
      ),
    );

    final _secondCategory =
        productPrices?.firstWhereOrNull((element) => element.statusCustomerId == customer?.statusCustomerId);
    _costCategories.add(
      CostCategory(
        id: 1,
        name: 'Status Pelanggan',
        code: 'status_pelanggan',
        amount: _secondCategory?.price ?? standardPrice,
      ),
    );

    productPriceQuantities?.forEach((element) {
      final _index = productPriceQuantities?.indexOf(element);
      if ((_index ?? 0) > 0) {
        _costCategories.add(
          CostCategory(
            id: 1 + (_index ?? 0),
            name:
                // 'Paket ${formatToIdr(getStandardPriceInInt() - int.parse(element.price ?? '0'))}',
                'Pembelian ${element.quantity} item',
            code: element.quantity ?? '1',
            amount: element.price ?? '0',
          ),
        );
      }
    });

    if (promo != null) {
      var _amount = '0';
      num _standardPrice = int.parse(standardPrice);
      if (promo!.categoryDiscount == 'persen') {
        _amount = (_standardPrice - ((num.parse(promo!.discount!) * _standardPrice) / 100)).toInt().toString();
      } else {
        _amount = (_standardPrice - num.parse(promo!.discount ?? '0')).toString();
      }
      _costCategories.add(
        CostCategory(
          id: _costCategories.length,
          name: promo!.title ?? 'Promo',
          code: 'promo',
          amount: _amount,
          promoId: promo!.id,
        ),
      );
    }

    return _costCategories;
  }
}

@freezed
class CostCategory with _$CostCategory {
  const factory CostCategory({
    required int id,
    required String name,
    required String code,
    required String amount,
    int? promoId,
  }) = _CostCategory;
}
