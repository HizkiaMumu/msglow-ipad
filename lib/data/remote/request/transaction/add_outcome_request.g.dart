// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_outcome_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AddOutcomeRequest _$$_AddOutcomeRequestFromJson(Map<String, dynamic> json) =>
    _$_AddOutcomeRequest(
      outcome: json['outcome'] as bool,
      date: json['date'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      amount: json['amount'] as String,
    );

Map<String, dynamic> _$$_AddOutcomeRequestToJson(
        _$_AddOutcomeRequest instance) =>
    <String, dynamic>{
      'outcome': instance.outcome,
      'date': instance.date,
      'title': instance.title,
      'description': instance.description,
      'amount': instance.amount,
    };
