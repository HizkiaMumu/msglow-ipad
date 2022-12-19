// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import 'kas_response.dart';

part 'list_pengeluaran_response.freezed.dart';
part 'list_pengeluaran_response.g.dart';

@freezed
class ListPengeluaranResponse with _$ListPengeluaranResponse {
  const ListPengeluaranResponse._();

  const factory ListPengeluaranResponse({
    required List<KasResponse>? kas,
    required String? status,
    @JsonKey(name: 'status_code') required String? statusCode,
    required String? message,
  }) = _ListPengeluaranResponse;

  factory ListPengeluaranResponse.fromJson(Map<String, dynamic> json) =>
      _$ListPengeluaranResponseFromJson(json);
}
