import '../../../../domain/entities/login/user.dart';
import '../login/user_response.dart';
import 'safe_convert.dart';

class ListKasirResponse {
  final List<User> users;
  final String status;
  final String statusCode;
  final String message;

  ListKasirResponse({
    required this.users,
    this.status = "",
    this.statusCode = "",
    this.message = "",
  });

  factory ListKasirResponse.fromJson(Map<String, dynamic>? json) =>
      ListKasirResponse(
        users: asList(json, 'users')
            .map((e) => UserResponse.fromJson(e).toDomain())
            .toList(),
        status: asString(json, 'status'),
        statusCode: asString(json, 'status_code'),
        message: asString(json, 'message'),
      );
}
