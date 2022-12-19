// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'closing_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ClosingRequest _$$_ClosingRequestFromJson(Map<String, dynamic> json) =>
    _$_ClosingRequest(
      startDate: json['start_date'] as String,
      endDate: json['end_date'] as String,
      userId: json['user_id'] as int?,
      actualEndingCash: json['actual_ending_cash'] as int?,
    );

Map<String, dynamic> _$$_ClosingRequestToJson(_$_ClosingRequest instance) =>
    <String, dynamic>{
      'start_date': instance.startDate,
      'end_date': instance.endDate,
      'user_id': instance.userId,
      'actual_ending_cash': instance.actualEndingCash,
    };
