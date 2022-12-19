// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../domain/entities/login/user.dart';
import '../../../../domain/entities/transaction/order.dart';
import '../penjualan/bank_account_list_response.dart';
import '../penjualan/customer/customer_element_response.dart';
import 'order_custom_response.dart';
import 'order_package.dart';
import 'transaction_order_product_response.dart';

part 'order_response.freezed.dart';

part 'order_response.g.dart';

@freezed
class OrderResponse with _$OrderResponse {
  const OrderResponse._();

  const factory OrderResponse({
    required int? id,
    @JsonKey(name: 'customer_id') required int? customerId,
    @JsonKey(name: 'merchant_id') required int? merchantId,
    @JsonKey(name: 'from_merchant_id') required int? fromMerchantId,
    @JsonKey(name: 'payment_method') required String? paymentMethod,
    @JsonKey(name: 'payment_mechanism') required String? paymentMechanism,
    @JsonKey(name: 'payment_status') required String? paymentStatus,
    required String? status,
    @JsonKey(name: 'shipping_cost') required String? shippingCost,
    @JsonKey(name: 'product_cost') required String? productCost,
    @JsonKey(name: 'additional_cost') required String? additionalCost,
    required DateTime? date,
    @JsonKey(name: 'cash_amount') required String? cashAmount,
    required String? discount,
    @JsonKey(name: 'created_at') required DateTime? createdAt,
    @JsonKey(name: 'updated_at') required DateTime? updatedAt,
    required CustomerElementResponse? customer,
    @JsonKey(name: 'order_products')
        required List<TransactionOrderProductResponse>? orderProducts,
    @JsonKey(name: 'order_customs')
        required List<OrderCustomResponse>? orderCustoms,
    @JsonKey(name: 'order_packages') required List<OrderPackage> orderPackage,
    @JsonKey(name: "bank_account") BankAccount? bankAccount,
    @JsonKey(name: "user") User? user,
    @JsonKey(name: "transfer_nama_pengirim") String? transferNamaPengirim,
    @JsonKey(name: "transfer_nama_bank") String? transferNamaBank,
    @JsonKey(name: "transfer_nomor_rekening") String? transferNomorRekening,
    @JsonKey(name: "is_printed") int? isPrinted,
  }) = _OrderResponse;

  factory OrderResponse.fromJson(Map<String, dynamic> json) =>
      _$OrderResponseFromJson(json);

  Order toDomain() => Order(
      id: id,
      customerId: customerId,
      merchantId: merchantId,
      fromMerchantId: fromMerchantId,
      paymentMethod: paymentMethod,
      paymentMechanism: paymentMechanism,
      paymentStatus: paymentStatus,
      status: status,
      shippingCost: shippingCost,
      productCost: productCost,
      additionalCost: additionalCost,
      date: date,
      cashAmount: cashAmount,
      discount: discount,
      createdAt: createdAt,
      updatedAt: updatedAt,
      customer: customer?.toDomain(),
      orderProducts: orderProducts?.map((e) => e.toDomain()).toList(),
      orderPackages: orderPackage,
      orderCustoms: orderCustoms?.map((e) => e.toDomain()).toList(),
      bankAccount: bankAccount,
      user: user,
      transferNamaPengirim: transferNamaPengirim,
      transferNamabank: transferNamaBank,
      transferNomorPrekening: transferNomorRekening,
      isPrinted: isPrinted == 1);
}
