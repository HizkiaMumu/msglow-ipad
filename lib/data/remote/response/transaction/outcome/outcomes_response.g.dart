// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'outcomes_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OutcomesResponse _$$_OutcomesResponseFromJson(Map<String, dynamic> json) =>
    _$_OutcomesResponse(
      outcomes: (json['outcomes'] as List<dynamic>?)
          ?.map((e) => Outcome.fromJson(e as Map<String, dynamic>))
          .toList(),
      total: json['total'] as int?,
      status: json['status'] as String?,
      statusCode: json['status_code'] as String?,
      message: json['message'] as String?,
    );

Map<String, dynamic> _$$_OutcomesResponseToJson(_$_OutcomesResponse instance) =>
    <String, dynamic>{
      'outcomes': instance.outcomes,
      'total': instance.total,
      'status': instance.status,
      'status_code': instance.statusCode,
      'message': instance.message,
    };

_$_Outcome _$$_OutcomeFromJson(Map<String, dynamic> json) => _$_Outcome(
      id: json['id'] as int?,
      date: json['date'] as String?,
      title: json['title'] as String?,
      description: json['description'] as String?,
      amount: json['amount'] as int?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
    );

Map<String, dynamic> _$$_OutcomeToJson(_$_Outcome instance) =>
    <String, dynamic>{
      'id': instance.id,
      'date': instance.date,
      'title': instance.title,
      'description': instance.description,
      'amount': instance.amount,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };
