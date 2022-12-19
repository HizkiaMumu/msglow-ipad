// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'closing_response.freezed.dart';
part 'closing_response.g.dart';

@freezed
class ClosingResponse with _$ClosingResponse {
  const factory ClosingResponse({
    required Struk? struk,
  }) = _ClosingResponse;

  factory ClosingResponse.fromJson(Map<String, dynamic> json) => _$ClosingResponseFromJson(json);
}

@freezed
class Struk with _$Struk {
  const factory Struk({
    @JsonKey(name: 'shift_print') required ShiftPrint? shiftPrint,
    @JsonKey(name: 'transaction_detail') required List<TransactionDetail>? transactionDetail,
    @JsonKey(name: 'payment_detail') required PaymentDetail? paymentDetail,
    @JsonKey(name: 'outcome_detail') required List<OutcomeDetail>? outcomeDetail,
    @JsonKey(name: 'kas_detail') required KasDetail? kasDetail,
    @JsonKey(name: 'cash_management_detail') required CashManagementDetail? cashManagementDetail,
    @JsonKey(name: 'refunded_items') required List<RefundedItem>? refundedItems,
  }) = _Struk;

  factory Struk.fromJson(Map<String, dynamic> json) => _$StrukFromJson(json);
}

@freezed
class KasDetail with _$KasDetail {
  const factory KasDetail({
    required int outcome,
    required int income,
  }) = _KasDetail;

  factory KasDetail.fromJson(Map<String, dynamic> json) => _$KasDetailFromJson(json);
}

@freezed
class CashManagementDetail with _$CashManagementDetail {
  const factory CashManagementDetail({
    @JsonKey(name: 'cash_payment') required int? cashPayment,
    @JsonKey(name: 'expected_ending_cash') required int? expectedEndingCash,
    @JsonKey(name: 'actual_ending_cash') required int? actualEndingCash,
    @JsonKey(name: 'cash_difference') required int? cashDifference,
    @JsonKey(name: 'income') required List<OutcomeDetail>? incomeCashManagementDetail,
    @JsonKey(name: 'expense') required List<OutcomeDetail>? expense,
  }) = _CashManagementDetail;

  factory CashManagementDetail.fromJson(Map<String, dynamic> json) => _$CashManagementDetailFromJson(json);
}

@freezed
class PaymentDetail with _$PaymentDetail {
  const factory PaymentDetail({
    @JsonKey(name: 'cash_payment') required CashPayment? cashPayment,
    @JsonKey(name: 'edc_payment') required EdcPayment? edcPayment,
    @JsonKey(name: 'e_wallet') required EWallet? eWallet,
    @JsonKey(name: 'transfer') required int? transfer,
    required Overview? overview,
  }) = _PaymentDetail;

  factory PaymentDetail.fromJson(Map<String, dynamic> json) => _$PaymentDetailFromJson(json);
}

@freezed
class CashPayment with _$CashPayment {
  const factory CashPayment({
    @JsonKey(name: 'cash_sales') required int? cashSales,
    @JsonKey(name: 'cash_refund') required int? cashRefund,
    required int? total,
  }) = _CashPayment;

  factory CashPayment.fromJson(Map<String, dynamic> json) => _$CashPaymentFromJson(json);
}

@freezed
class EWallet with _$EWallet {
  const factory EWallet({
    @JsonKey(name: 'shopee_pay') required int? shopeePay,
    required int? gopay,
    required int? dana,
    required int? qris,
    required int? ovo,
    required int? total,
  }) = _EWallet;

  factory EWallet.fromJson(Map<String, dynamic> json) => _$EWalletFromJson(json);
}

@freezed
class EdcPayment with _$EdcPayment {
  const factory EdcPayment({
    required int? bca,
    required int? mandiri,
    required int? bri,
    required int? bni,
    required int? refund,
    required int? total,
  }) = _EdcPayment;

  factory EdcPayment.fromJson(Map<String, dynamic> json) => _$EdcPaymentFromJson(json);
}

@freezed
class Overview with _$Overview {
  const factory Overview({
    required int? income,
    required int? outcome,
    required int? total,
  }) = _Overview;

  factory Overview.fromJson(Map<String, dynamic> json) => _$OverviewFromJson(json);
}

@freezed
class ShiftPrint with _$ShiftPrint {
  const factory ShiftPrint({
    @JsonKey(name: 'start_date') required DateTime? startDate,
    @JsonKey(name: 'end_date') required DateTime? endDate,
    @JsonKey(name: 'sold_items') required String? soldItems,
    @JsonKey(name: 'refund_items') required String? refundItems,
    String? address,
    required String? kasir,
  }) = _ShiftPrint;

  factory ShiftPrint.fromJson(Map<String, dynamic> json) => _$ShiftPrintFromJson(json);
}

@freezed
class TransactionDetail with _$TransactionDetail {
  const factory TransactionDetail({
    @JsonKey(name: 'nama_barang') required String? namaBarang,
    required int? qty,
    required int? harga,
    required int? total,
  }) = _TransactionDetail;

  factory TransactionDetail.fromJson(Map<String, dynamic> json) => _$TransactionDetailFromJson(json);
}

@freezed
class RefundedItem with _$RefundedItem {
  const factory RefundedItem({
    @JsonKey(name: 'nama_barang') required String? namaBarang,
    @JsonKey(name: 'order_category') required String? orderCategory,
    required int? qty,
    required int? harga,
    required int? total,
  }) = _RefundedItem;

  factory RefundedItem.fromJson(Map<String, dynamic> json) => _$RefundedItemFromJson(json);
}

@freezed
class OutcomeDetail with _$OutcomeDetail {
  const factory OutcomeDetail({
    required String? text,
    required int? amount,
  }) = _OutcomeDetail;

  factory OutcomeDetail.fromJson(Map<String, dynamic> json) => _$OutcomeDetailFromJson(json);
}
