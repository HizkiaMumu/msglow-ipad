// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_pengeluaran_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ListPengeluaranResponse _$$_ListPengeluaranResponseFromJson(
        Map<String, dynamic> json) =>
    _$_ListPengeluaranResponse(
      kas: (json['kas'] as List<dynamic>?)
          ?.map((e) => KasResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      status: json['status'] as String?,
      statusCode: json['status_code'] as String?,
      message: json['message'] as String?,
    );

Map<String, dynamic> _$$_ListPengeluaranResponseToJson(
        _$_ListPengeluaranResponse instance) =>
    <String, dynamic>{
      'kas': instance.kas,
      'status': instance.status,
      'status_code': instance.statusCode,
      'message': instance.message,
    };
