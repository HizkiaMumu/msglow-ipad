import 'package:freezed_annotation/freezed_annotation.dart';

part 'base_domain.freezed.dart';

@freezed
class BaseDomain with _$BaseDomain {
  const factory BaseDomain({
    required String? status,
    required String? statusCode,
    required String? message,
  }) = _BaseDomain;
}
