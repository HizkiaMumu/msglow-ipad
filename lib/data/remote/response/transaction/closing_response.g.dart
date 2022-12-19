// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'closing_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ClosingResponse _$$_ClosingResponseFromJson(Map<String, dynamic> json) =>
    _$_ClosingResponse(
      struk: json['struk'] == null
          ? null
          : Struk.fromJson(json['struk'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ClosingResponseToJson(_$_ClosingResponse instance) =>
    <String, dynamic>{
      'struk': instance.struk,
    };

_$_Struk _$$_StrukFromJson(Map<String, dynamic> json) => _$_Struk(
      shiftPrint: json['shift_print'] == null
          ? null
          : ShiftPrint.fromJson(json['shift_print'] as Map<String, dynamic>),
      transactionDetail: (json['transaction_detail'] as List<dynamic>?)
          ?.map((e) => TransactionDetail.fromJson(e as Map<String, dynamic>))
          .toList(),
      paymentDetail: json['payment_detail'] == null
          ? null
          : PaymentDetail.fromJson(
              json['payment_detail'] as Map<String, dynamic>),
      outcomeDetail: (json['outcome_detail'] as List<dynamic>?)
          ?.map((e) => OutcomeDetail.fromJson(e as Map<String, dynamic>))
          .toList(),
      kasDetail: json['kas_detail'] == null
          ? null
          : KasDetail.fromJson(json['kas_detail'] as Map<String, dynamic>),
      cashManagementDetail: json['cash_management_detail'] == null
          ? null
          : CashManagementDetail.fromJson(
              json['cash_management_detail'] as Map<String, dynamic>),
      refundedItems: (json['refunded_items'] as List<dynamic>?)
          ?.map((e) => RefundedItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_StrukToJson(_$_Struk instance) => <String, dynamic>{
      'shift_print': instance.shiftPrint,
      'transaction_detail': instance.transactionDetail,
      'payment_detail': instance.paymentDetail,
      'outcome_detail': instance.outcomeDetail,
      'kas_detail': instance.kasDetail,
      'cash_management_detail': instance.cashManagementDetail,
      'refunded_items': instance.refundedItems,
    };

_$_KasDetail _$$_KasDetailFromJson(Map<String, dynamic> json) => _$_KasDetail(
      outcome: json['outcome'] as int,
      income: json['income'] as int,
    );

Map<String, dynamic> _$$_KasDetailToJson(_$_KasDetail instance) =>
    <String, dynamic>{
      'outcome': instance.outcome,
      'income': instance.income,
    };

_$_CashManagementDetail _$$_CashManagementDetailFromJson(
        Map<String, dynamic> json) =>
    _$_CashManagementDetail(
      cashPayment: json['cash_payment'] as int?,
      expectedEndingCash: json['expected_ending_cash'] as int?,
      actualEndingCash: json['actual_ending_cash'] as int?,
      cashDifference: json['cash_difference'] as int?,
      incomeCashManagementDetail: (json['income'] as List<dynamic>?)
          ?.map((e) => OutcomeDetail.fromJson(e as Map<String, dynamic>))
          .toList(),
      expense: (json['expense'] as List<dynamic>?)
          ?.map((e) => OutcomeDetail.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_CashManagementDetailToJson(
        _$_CashManagementDetail instance) =>
    <String, dynamic>{
      'cash_payment': instance.cashPayment,
      'expected_ending_cash': instance.expectedEndingCash,
      'actual_ending_cash': instance.actualEndingCash,
      'cash_difference': instance.cashDifference,
      'income': instance.incomeCashManagementDetail,
      'expense': instance.expense,
    };

_$_PaymentDetail _$$_PaymentDetailFromJson(Map<String, dynamic> json) =>
    _$_PaymentDetail(
      cashPayment: json['cash_payment'] == null
          ? null
          : CashPayment.fromJson(json['cash_payment'] as Map<String, dynamic>),
      edcPayment: json['edc_payment'] == null
          ? null
          : EdcPayment.fromJson(json['edc_payment'] as Map<String, dynamic>),
      eWallet: json['e_wallet'] == null
          ? null
          : EWallet.fromJson(json['e_wallet'] as Map<String, dynamic>),
      transfer: json['transfer'] as int?,
      overview: json['overview'] == null
          ? null
          : Overview.fromJson(json['overview'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_PaymentDetailToJson(_$_PaymentDetail instance) =>
    <String, dynamic>{
      'cash_payment': instance.cashPayment,
      'edc_payment': instance.edcPayment,
      'e_wallet': instance.eWallet,
      'transfer': instance.transfer,
      'overview': instance.overview,
    };

_$_CashPayment _$$_CashPaymentFromJson(Map<String, dynamic> json) =>
    _$_CashPayment(
      cashSales: json['cash_sales'] as int?,
      cashRefund: json['cash_refund'] as int?,
      total: json['total'] as int?,
    );

Map<String, dynamic> _$$_CashPaymentToJson(_$_CashPayment instance) =>
    <String, dynamic>{
      'cash_sales': instance.cashSales,
      'cash_refund': instance.cashRefund,
      'total': instance.total,
    };

_$_EWallet _$$_EWalletFromJson(Map<String, dynamic> json) => _$_EWallet(
      shopeePay: json['shopee_pay'] as int?,
      gopay: json['gopay'] as int?,
      dana: json['dana'] as int?,
      qris: json['qris'] as int?,
      ovo: json['ovo'] as int?,
      total: json['total'] as int?,
    );

Map<String, dynamic> _$$_EWalletToJson(_$_EWallet instance) =>
    <String, dynamic>{
      'shopee_pay': instance.shopeePay,
      'gopay': instance.gopay,
      'dana': instance.dana,
      'qris': instance.qris,
      'ovo': instance.ovo,
      'total': instance.total,
    };

_$_EdcPayment _$$_EdcPaymentFromJson(Map<String, dynamic> json) =>
    _$_EdcPayment(
      bca: json['bca'] as int?,
      mandiri: json['mandiri'] as int?,
      bri: json['bri'] as int?,
      bni: json['bni'] as int?,
      refund: json['refund'] as int?,
      total: json['total'] as int?,
    );

Map<String, dynamic> _$$_EdcPaymentToJson(_$_EdcPayment instance) =>
    <String, dynamic>{
      'bca': instance.bca,
      'mandiri': instance.mandiri,
      'bri': instance.bri,
      'bni': instance.bni,
      'refund': instance.refund,
      'total': instance.total,
    };

_$_Overview _$$_OverviewFromJson(Map<String, dynamic> json) => _$_Overview(
      income: json['income'] as int?,
      outcome: json['outcome'] as int?,
      total: json['total'] as int?,
    );

Map<String, dynamic> _$$_OverviewToJson(_$_Overview instance) =>
    <String, dynamic>{
      'income': instance.income,
      'outcome': instance.outcome,
      'total': instance.total,
    };

_$_ShiftPrint _$$_ShiftPrintFromJson(Map<String, dynamic> json) =>
    _$_ShiftPrint(
      startDate: json['start_date'] == null
          ? null
          : DateTime.parse(json['start_date'] as String),
      endDate: json['end_date'] == null
          ? null
          : DateTime.parse(json['end_date'] as String),
      soldItems: json['sold_items'] as String?,
      refundItems: json['refund_items'] as String?,
      address: json['address'] as String?,
      kasir: json['kasir'] as String?,
    );

Map<String, dynamic> _$$_ShiftPrintToJson(_$_ShiftPrint instance) =>
    <String, dynamic>{
      'start_date': instance.startDate?.toIso8601String(),
      'end_date': instance.endDate?.toIso8601String(),
      'sold_items': instance.soldItems,
      'refund_items': instance.refundItems,
      'address': instance.address,
      'kasir': instance.kasir,
    };

_$_TransactionDetail _$$_TransactionDetailFromJson(Map<String, dynamic> json) =>
    _$_TransactionDetail(
      namaBarang: json['nama_barang'] as String?,
      qty: json['qty'] as int?,
      harga: json['harga'] as int?,
      total: json['total'] as int?,
    );

Map<String, dynamic> _$$_TransactionDetailToJson(
        _$_TransactionDetail instance) =>
    <String, dynamic>{
      'nama_barang': instance.namaBarang,
      'qty': instance.qty,
      'harga': instance.harga,
      'total': instance.total,
    };

_$_RefundedItem _$$_RefundedItemFromJson(Map<String, dynamic> json) =>
    _$_RefundedItem(
      namaBarang: json['nama_barang'] as String?,
      orderCategory: json['order_category'] as String?,
      qty: json['qty'] as int?,
      harga: json['harga'] as int?,
      total: json['total'] as int?,
    );

Map<String, dynamic> _$$_RefundedItemToJson(_$_RefundedItem instance) =>
    <String, dynamic>{
      'nama_barang': instance.namaBarang,
      'order_category': instance.orderCategory,
      'qty': instance.qty,
      'harga': instance.harga,
      'total': instance.total,
    };

_$_OutcomeDetail _$$_OutcomeDetailFromJson(Map<String, dynamic> json) =>
    _$_OutcomeDetail(
      text: json['text'] as String?,
      amount: json['amount'] as int?,
    );

Map<String, dynamic> _$$_OutcomeDetailToJson(_$_OutcomeDetail instance) =>
    <String, dynamic>{
      'text': instance.text,
      'amount': instance.amount,
    };
