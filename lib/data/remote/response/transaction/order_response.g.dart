// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OrderResponse _$$_OrderResponseFromJson(Map<String, dynamic> json) =>
    _$_OrderResponse(
      id: json['id'] as int?,
      customerId: json['customer_id'] as int?,
      merchantId: json['merchant_id'] as int?,
      fromMerchantId: json['from_merchant_id'] as int?,
      paymentMethod: json['payment_method'] as String?,
      paymentMechanism: json['payment_mechanism'] as String?,
      paymentStatus: json['payment_status'] as String?,
      status: json['status'] as String?,
      shippingCost: json['shipping_cost'] as String?,
      productCost: json['product_cost'] as String?,
      additionalCost: json['additional_cost'] as String?,
      date:
          json['date'] == null ? null : DateTime.parse(json['date'] as String),
      cashAmount: json['cash_amount'] as String?,
      discount: json['discount'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      customer: json['customer'] == null
          ? null
          : CustomerElementResponse.fromJson(
              json['customer'] as Map<String, dynamic>),
      orderProducts: (json['order_products'] as List<dynamic>?)
          ?.map((e) => TransactionOrderProductResponse.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      orderCustoms: (json['order_customs'] as List<dynamic>?)
          ?.map((e) => OrderCustomResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      orderPackage: (json['order_packages'] as List<dynamic>)
          .map((e) => OrderPackage.fromJson(e as Map<String, dynamic>?))
          .toList(),
      bankAccount: json['bank_account'] == null
          ? null
          : BankAccount.fromJson(json['bank_account'] as Map<String, dynamic>?),
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
      transferNamaPengirim: json['transfer_nama_pengirim'] as String?,
      transferNamaBank: json['transfer_nama_bank'] as String?,
      transferNomorRekening: json['transfer_nomor_rekening'] as String?,
      isPrinted: json['is_printed'] as int?,
    );

Map<String, dynamic> _$$_OrderResponseToJson(_$_OrderResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'customer_id': instance.customerId,
      'merchant_id': instance.merchantId,
      'from_merchant_id': instance.fromMerchantId,
      'payment_method': instance.paymentMethod,
      'payment_mechanism': instance.paymentMechanism,
      'payment_status': instance.paymentStatus,
      'status': instance.status,
      'shipping_cost': instance.shippingCost,
      'product_cost': instance.productCost,
      'additional_cost': instance.additionalCost,
      'date': instance.date?.toIso8601String(),
      'cash_amount': instance.cashAmount,
      'discount': instance.discount,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'customer': instance.customer,
      'order_products': instance.orderProducts,
      'order_customs': instance.orderCustoms,
      'order_packages': instance.orderPackage,
      'bank_account': instance.bankAccount,
      'user': instance.user,
      'transfer_nama_pengirim': instance.transferNamaPengirim,
      'transfer_nama_bank': instance.transferNamaBank,
      'transfer_nomor_rekening': instance.transferNomorRekening,
      'is_printed': instance.isPrinted,
    };
