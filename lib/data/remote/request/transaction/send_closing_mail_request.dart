// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'send_closing_mail_request.freezed.dart';
part 'send_closing_mail_request.g.dart';

@freezed
class SendClosingMailRequest with _$SendClosingMailRequest {
  const factory SendClosingMailRequest({
    @JsonKey(name: 'email') required String email,
  }) = _SendClosingMailRequest;

  factory SendClosingMailRequest.fromJson(Map<String, dynamic> json) =>
      _$SendClosingMailRequestFromJson(json);
}
