import 'package:freezed_annotation/freezed_annotation.dart';

import 'user.dart';

part 'login.freezed.dart';

@freezed
class Login with _$Login {
  const factory Login({
    required User? user,
    required String? status,
    required String? statusCode,
    required String? message,
    required String? token,
  }) = _Login;
}
