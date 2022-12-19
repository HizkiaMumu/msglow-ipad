import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../domain/entities/login/login.dart';
import 'user_response.dart';

part 'login_response.freezed.dart';
part 'login_response.g.dart';

@freezed
class LoginResponse with _$LoginResponse {
  const LoginResponse._();

  const factory LoginResponse({
    UserResponse? user,
    String? status,
    String? statusCode,
    String? message,
    String? token,
  }) = _LoginResponse;

  factory LoginResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseFromJson(json);

  Login toDomain() => Login(
        user: user?.toDomain(),
        status: status,
        statusCode: statusCode,
        message: message,
        token: token,
      );
}
