import 'package:freezed_annotation/freezed_annotation.dart';

part 'cash_amount_suggestion.freezed.dart';

@freezed
class CashAmountSuggestion with _$CashAmountSuggestion {
  const factory CashAmountSuggestion({
    required int? suggestionAmount,
    required String? status,
    required String? statusCode,
    required String? message,
  }) = _CashAmountSuggestion;
}
