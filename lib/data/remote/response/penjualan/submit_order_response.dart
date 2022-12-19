import 'dart:convert';

import 'safe_convert.dart';

class SubmitOrderResponse {
  final int orderId;
  final String status;
  final String statusCode;
  final String message;

  SubmitOrderResponse({
    this.orderId = 0,
    this.status = "",
    this.statusCode = "",
    this.message = "",
  });

  factory SubmitOrderResponse.fromJson(Map<String, dynamic>? json) =>
      SubmitOrderResponse(
        orderId: asInt(json, 'order_id'),
        status: asString(json, 'status'),
        statusCode: asString(json, 'status_code'),
        message: asString(json, 'message'),
      );

  Map<String, dynamic> toJson() => {
        'order_id': orderId,
        'status': status,
        'status_code': statusCode,
        'message': message,
      };

  bool get isSuccess => status.toLowerCase() == "ok";

  @override
  String toString() {
    return jsonEncode(toJson());
  }
}
