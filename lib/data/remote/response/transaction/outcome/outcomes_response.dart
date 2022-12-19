// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'outcomes_response.freezed.dart';
part 'outcomes_response.g.dart';

@freezed
abstract class OutcomesResponse with _$OutcomesResponse {
  const factory OutcomesResponse({
    required List<Outcome>? outcomes,
    required int? total,
    required String? status,
    @JsonKey(name: 'status_code') required String? statusCode,
    required String? message,
  }) = _OutcomesResponse;

  factory OutcomesResponse.fromJson(Map<String, dynamic> json) =>
      _$OutcomesResponseFromJson(json);
}

@freezed
abstract class Outcome with _$Outcome {
  const factory Outcome({
    required int? id,
    required String? date,
    required String? title,
    required String? description,
    required int? amount,
    @JsonKey(name: 'created_at') required String? createdAt,
    @JsonKey(name: 'updated_at') required String? updatedAt,
  }) = _Outcome;

  factory Outcome.fromJson(Map<String, dynamic> json) =>
      _$OutcomeFromJson(json);
}
