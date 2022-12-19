import 'package:equatable/equatable.dart';

import 'safe_convert.dart';

class BankAccountListResponse {
  final List<BankAccount> bankAccounts;
  final String status;
  final int statusCode;
  final String message;

  BankAccountListResponse({
    required this.bankAccounts,
    this.status = "",
    this.statusCode = 0,
    this.message = "",
  });

  factory BankAccountListResponse.fromJson(Map<String, dynamic>? json) => BankAccountListResponse(
        bankAccounts: asList(json, 'bank_accounts').map((e) => BankAccount.fromJson(e)).toList(),
        status: asString(json, 'status'),
        statusCode: asInt(json, 'status_code'),
        message: asString(json, 'message'),
      );

  Map<String, dynamic> toJson() => {
        'bank_accounts': bankAccounts.map((e) => e.toJson()),
        'status': status,
        'status_code': statusCode,
        'message': message,
      };

  bool get isSuccess => status.toLowerCase() == "ok";
}

class BankAccount extends Equatable {
  final int id;
  final String accountName;
  final String bankName;
  final String accountNumber;
  final String createdAt;
  final String updatedAt;

  const BankAccount({
    this.id = 0,
    this.accountName = "",
    this.bankName = "",
    this.accountNumber = "",
    this.createdAt = "",
    this.updatedAt = "",
  });

  factory BankAccount.fromJson(Map<String, dynamic>? json) => BankAccount(
        id: asInt(json, 'id'),
        accountName: asString(json, 'account_name'),
        bankName: asString(json, 'bank_name'),
        accountNumber: asString(json, 'account_number'),
        createdAt: asString(json, 'created_at'),
        updatedAt: asString(json, 'updated_at'),
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'account_name': accountName,
        'bank_name': bankName,
        'account_number': accountNumber,
        'created_at': createdAt,
        'updated_at': updatedAt,
      };

  @override
  List<Object?> get props => [id, accountName, bankName, accountNumber];
}
