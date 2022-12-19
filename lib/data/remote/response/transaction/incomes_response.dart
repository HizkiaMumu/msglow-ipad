import 'package:equatable/equatable.dart';

import '../penjualan/safe_convert.dart';

class IncomeResponse extends Equatable {
  final List<Income> incomes;
  final double total;
  final String status;
  final String statusCode;
  final String message;

  const IncomeResponse({
    required this.incomes,
    this.total = 0.0,
    this.status = "",
    this.statusCode = "",
    this.message = "",
  });

  bool get isSuccess => status.toLowerCase() == "ok";

  factory IncomeResponse.fromJson(Map<String, dynamic>? json) => IncomeResponse(
        incomes: asList(json, 'incomes').map((e) => Income.fromJson(e)).toList(),
        total: asDouble(json, 'total'),
        status: asString(json, 'status'),
        statusCode: asString(json, 'status_code'),
        message: asString(json, 'message'),
      );

  Map<String, dynamic> toJson() => {
        'incomes': incomes.map((e) => e.toJson()),
        'total': total,
        'status': status,
        'status_code': statusCode,
        'message': message,
      };

  @override
  List<Object?> get props => [incomes, total, status];
}

class Income extends Equatable {
  final int id;
  final String date;
  final String title;
  final String description;
  final double amount;
  final String createdAt;
  final String updatedAt;

  const Income({
    this.id = 0,
    this.date = "",
    this.title = "",
    this.description = "",
    this.amount = 0.0,
    this.createdAt = "",
    this.updatedAt = "",
  });

  factory Income.fromJson(Map<String, dynamic>? json) => Income(
        id: asInt(json, 'id'),
        date: asString(json, 'date'),
        title: asString(json, 'title'),
        description: asString(json, 'description'),
        amount: asDouble(json, 'amount'),
        createdAt: asString(json, 'created_at'),
        updatedAt: asString(json, 'updated_at'),
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'date': date,
        'title': title,
        'description': description,
        'amount': amount,
        'created_at': createdAt,
        'updated_at': updatedAt,
      };

  @override
  List<Object?> get props => [id, date, title, description, amount];
}
