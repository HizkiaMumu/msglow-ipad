// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_outcome_request.freezed.dart';
part 'add_outcome_request.g.dart';

@freezed
class AddOutcomeRequest with _$AddOutcomeRequest {
  const factory AddOutcomeRequest({
    required bool outcome,
    required String date,
    required String title,
    required String description,
    required String amount,
  }) = _AddOutcomeRequest;

  factory AddOutcomeRequest.fromJson(Map<String, dynamic> json) =>
      _$AddOutcomeRequestFromJson(json);
}
