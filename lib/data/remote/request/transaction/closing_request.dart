// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'closing_request.freezed.dart';
part 'closing_request.g.dart';

@freezed
class ClosingRequest with _$ClosingRequest {
  const factory ClosingRequest({
    @JsonKey(name: 'start_date') required String startDate,
    @JsonKey(name: 'end_date') required String endDate,
    @JsonKey(name: 'user_id') required int? userId,
    @JsonKey(name: 'actual_ending_cash') required int? actualEndingCash,
  }) = _ClosingRequest;

  factory ClosingRequest.fromJson(Map<String, dynamic> json) =>
      _$ClosingRequestFromJson(json);
}
