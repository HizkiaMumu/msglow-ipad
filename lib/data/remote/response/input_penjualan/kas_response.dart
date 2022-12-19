// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'kas_response.freezed.dart';
part 'kas_response.g.dart';

@freezed
class KasResponse with _$KasResponse {
  const factory KasResponse({
    required int? id,
    required int? merchantId,
    required String? date,
    required String? amount,
    @JsonKey(name: 'remaining_amount') required String? remainingAmount,
    @JsonKey(name: 'created_at') required String? createdAt,
    required String? updatedAt,
    @JsonKey(name: 'kas_transactions')
        required List<KasTransaction>? kasTransactions,
  }) = _KasResponse;

  factory KasResponse.fromJson(Map<String, dynamic> json) =>
      _$KasResponseFromJson(json);
}

@freezed
class KasTransaction with _$KasTransaction {
  const factory KasTransaction({
    required int? id,
    required int? kasId,
    required String? description,
    required int? debit,
    required int? quantity,
    @JsonKey(name: 'unit_price') required int? unitPrice,
    @JsonKey(name: 'another_load') required int? anotherLoad,
    @JsonKey(name: 'atk_load') required int? atkLoad,
    @JsonKey(name: 'vehicle_load') required int? vehicleLoad,
    @JsonKey(name: 'employee_kasbon') required int? employeeKasbon,
    @JsonKey(name: 'account_payable') required int? accountPayable,
    @JsonKey(name: 'additional_cost') required int? additionalCost,
    required String? createdAt,
    required String? updatedAt,
  }) = _KasTransaction;

  factory KasTransaction.fromJson(Map<String, dynamic> json) =>
      _$KasTransactionFromJson(json);
}
