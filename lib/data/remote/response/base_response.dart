// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/base_domain.dart';

part 'base_response.freezed.dart';

part 'base_response.g.dart';

@freezed
class BaseResponse with _$BaseResponse {
  const BaseResponse._();

  const factory BaseResponse({
    required String? status,
    @JsonKey(name: 'status_code') required String? statusCode,
    required String? message,
  }) = _BaseResponse;

  factory BaseResponse.fromJson(Map<String, dynamic> json) =>
      _$BaseResponseFromJson(json);

  BaseDomain toDomain() => BaseDomain(
        status: status,
        statusCode: statusCode,
        message: message,
      );
}
