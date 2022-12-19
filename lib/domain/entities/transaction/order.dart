import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/remote/response/penjualan/bank_account_list_response.dart';
import '../../../data/remote/response/transaction/order_package.dart';
import '../login/user.dart';
import '../penjualan/customer/customer_element.dart';
import '../penjualan/e_wallet_item_data.dart';
import '../penjualan/edc_item_data.dart';
import '../print/print_data.dart';
import '../print/print_order_data.dart';
import 'order_custom.dart';
import 'transaction_order_product.dart';

part 'order.freezed.dart';

@freezed
class Order with _$Order {
  const Order._();

  const factory Order({
    required int? id,
    required int? customerId,
    required int? merchantId,
    required int? fromMerchantId,
    required String? paymentMethod,
    required String? paymentMechanism,
    required String? paymentStatus,
    required String? status,
    required String? shippingCost,
    required String? productCost,
    required String? additionalCost,
    required DateTime? date,
    required String? cashAmount,
    required String? discount,
    required DateTime? createdAt,
    required DateTime? updatedAt,
    required CustomerElement? customer,
    required List<TransactionOrderProduct>? orderProducts,
    required List<OrderPackage>? orderPackages,
    required List<OrderCustom>? orderCustoms,
    required BankAccount? bankAccount,
    required User? user,
    required String? transferNamaPengirim,
    required String? transferNamabank,
    required String? transferNomorPrekening,
    required bool? isPrinted,
  }) = _Order;

  String? selectedPaymentMethodAsset() {
    if (paymentMethod == null || paymentMethod!.contains('cash')) {
      return null;
    }

    // Return E-Wallet asset when payment method is ewallet
    for (EWalletItemData eWallet in EWalletItemData.items) {
      if (eWallet.name.toLowerCase() == paymentMethod) {
        return eWallet.imageAsset;
      }
    }

    // Return EDC asset when payment method is EDC
    for (EdcItemData edc in EdcItemData.items) {
      if (edc.name.toLowerCase() == paymentMethod) {
        return edc.imageAsset;
      }
    }
    return null;
  }

  int get totalQuantity {
    int _totalQuantity = 0;
    orderProducts?.forEach((element) {
      _totalQuantity += element.amount ?? 0;
    });
    return _totalQuantity;
  }

  int get totalQuantityCustomOrders {
    int _totalQuantity = 0;
    orderCustoms?.forEach((element) {
      _totalQuantity += int.parse(element.quantity ?? '0');
    });
    return _totalQuantity;
  }

  int get totalPayment {
    int _totalPayment = 0;
    orderProducts?.forEach((element) {
      final total = element.costPerItem ?? 0;
      final qty = element.amount ?? 0;
      _totalPayment += total * qty;
    });
    orderPackages?.forEach((element) {
      final total = element.price.toInt();
      final qty = element.quantity;
      _totalPayment += total * qty;
    });
    orderCustoms?.forEach((element) {
      final total = int.parse(element.price ?? '0');
      final qty = int.parse(element.quantity ?? '0');
      _totalPayment += total * qty;
    });
    return _totalPayment;
  }

  String productName(TransactionOrderProduct item) {
    if (item.isPreOrder == true) {
      return "(Pre-Order)${item.product?.name ?? '-'}";
    } else {
      return item.product?.name ?? '-';
    }
  }

  PrintData toPrintData() => PrintData(
        customer: customer,
        orderData: orderProducts
                ?.map(
                  (e) => PrintOrderData(
                    quantity: e.amount ?? 0,
                    costPerItem: e.costPerItem ?? 0,
                    total: int.parse(e.product?.productPriceQuantity?.price ?? '0') * (e.amount ?? 0),
                    name: productName(e),
                    note: e.note,
                    isPreOrder: e.isPreOrder,
                  ),
                )
                .toList() ??
            List.empty(),
        orderPackages: orderPackages
                ?.map(
                  (e) => PrintOrderData(
                    quantity: e.quantity,
                    costPerItem: e.price.toInt(),
                    total: (e.package.price != null ? e.package.price!.toInt() : 0) * e.quantity,
                    name: e.package.name ?? '-',
                    note: e.note,
                  ),
                )
                .toList() ??
            List.empty(),
        orderCustom: orderCustoms
                ?.map(
                  (e) => PrintOrderData(
                    quantity: int.parse(e.quantity ?? '0'),
                    costPerItem: int.parse(e.price ?? '0'),
                    total: int.parse(e.price ?? '0') * int.parse(e.quantity ?? '0'),
                    name: e.product ?? '-',
                    note: e.description ?? '',
                  ),
                )
                .toList() ??
            List.empty(),
        subtotal: int.parse(productCost ?? '0') + int.parse(discount ?? '0'),
        discount: int.parse(discount ?? '0'),
        total: totalPayment,
        paymentMethod: paymentMethod ?? '-',
        cashAmount: int.parse(cashAmount ?? '0'),
        orderDate: date ?? DateTime.now(),
        isPrinted: isPrinted ?? false,
        cashierData: user,
      );

  bool get isOrderCustomExist {
    return orderCustoms != null && orderCustoms!.isNotEmpty;
  }

  bool get isOrderProductExist {
    return orderProducts != null && orderProducts!.isNotEmpty;
  }
}
