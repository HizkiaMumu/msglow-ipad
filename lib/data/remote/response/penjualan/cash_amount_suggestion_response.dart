// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../domain/entities/penjualan/cash_amount_suggestion.dart';

part 'cash_amount_suggestion_response.freezed.dart';

part 'cash_amount_suggestion_response.g.dart';

@freezed
class CashAmountSuggestionResponse with _$CashAmountSuggestionResponse {
  const CashAmountSuggestionResponse._();

  const factory CashAmountSuggestionResponse({
    @JsonKey(name: 'hasil_pendekatan') required int? suggestionAmount,
    required String? status,
    @JsonKey(name: 'status_code') required String? statusCode,
    required String? message,
  }) = _CashAmountSuggestionResponse;

  factory CashAmountSuggestionResponse.fromJson(Map<String, dynamic> json) =>
      _$CashAmountSuggestionResponseFromJson(json);

  CashAmountSuggestion toDomain() => CashAmountSuggestion(
        suggestionAmount: suggestionAmount,
        status: status,
        statusCode: statusCode,
        message: message,
      );
}
