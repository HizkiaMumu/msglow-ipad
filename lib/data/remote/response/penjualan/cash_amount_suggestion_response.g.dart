// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cash_amount_suggestion_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CashAmountSuggestionResponse _$$_CashAmountSuggestionResponseFromJson(
        Map<String, dynamic> json) =>
    _$_CashAmountSuggestionResponse(
      suggestionAmount: json['hasil_pendekatan'] as int?,
      status: json['status'] as String?,
      statusCode: json['status_code'] as String?,
      message: json['message'] as String?,
    );

Map<String, dynamic> _$$_CashAmountSuggestionResponseToJson(
        _$_CashAmountSuggestionResponse instance) =>
    <String, dynamic>{
      'hasil_pendekatan': instance.suggestionAmount,
      'status': instance.status,
      'status_code': instance.statusCode,
      'message': instance.message,
    };
