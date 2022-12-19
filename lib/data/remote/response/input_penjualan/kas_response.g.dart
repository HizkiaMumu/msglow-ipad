// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'kas_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_KasResponse _$$_KasResponseFromJson(Map<String, dynamic> json) =>
    _$_KasResponse(
      id: json['id'] as int?,
      merchantId: json['merchantId'] as int?,
      date: json['date'] as String?,
      amount: json['amount'] as String?,
      remainingAmount: json['remaining_amount'] as String?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updatedAt'] as String?,
      kasTransactions: (json['kas_transactions'] as List<dynamic>?)
          ?.map((e) => KasTransaction.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_KasResponseToJson(_$_KasResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'merchantId': instance.merchantId,
      'date': instance.date,
      'amount': instance.amount,
      'remaining_amount': instance.remainingAmount,
      'created_at': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'kas_transactions': instance.kasTransactions,
    };

_$_KasTransaction _$$_KasTransactionFromJson(Map<String, dynamic> json) =>
    _$_KasTransaction(
      id: json['id'] as int?,
      kasId: json['kasId'] as int?,
      description: json['description'] as String?,
      debit: json['debit'] as int?,
      quantity: json['quantity'] as int?,
      unitPrice: json['unit_price'] as int?,
      anotherLoad: json['another_load'] as int?,
      atkLoad: json['atk_load'] as int?,
      vehicleLoad: json['vehicle_load'] as int?,
      employeeKasbon: json['employee_kasbon'] as int?,
      accountPayable: json['account_payable'] as int?,
      additionalCost: json['additional_cost'] as int?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
    );

Map<String, dynamic> _$$_KasTransactionToJson(_$_KasTransaction instance) =>
    <String, dynamic>{
      'id': instance.id,
      'kasId': instance.kasId,
      'description': instance.description,
      'debit': instance.debit,
      'quantity': instance.quantity,
      'unit_price': instance.unitPrice,
      'another_load': instance.anotherLoad,
      'atk_load': instance.atkLoad,
      'vehicle_load': instance.vehicleLoad,
      'employee_kasbon': instance.employeeKasbon,
      'account_payable': instance.accountPayable,
      'additional_cost': instance.additionalCost,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };
