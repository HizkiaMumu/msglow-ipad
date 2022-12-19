// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_pengeluaran_baru_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AddPengeluaranBaruRequest _$$_AddPengeluaranBaruRequestFromJson(
        Map<String, dynamic> json) =>
    _$_AddPengeluaranBaruRequest(
      inputTanggal: json['date'] as String,
      keterangan: json['description'] as String,
      quantity: json['quantity'] as String,
      hargaSatuan: json['unit_price'] as String,
      bebanLainlain: json['another_load'] as String,
      bebanAtk: json['atk_load'] as String,
      bebanKendaraan: json['vehicle_load'] as String,
      kasbonKaryawan: json['employee_kasbon'] as String,
      hutangUsaha: json['account_payable'] as String,
      biayaTambahan: json['additional_cost'] as String,
    );

Map<String, dynamic> _$$_AddPengeluaranBaruRequestToJson(
        _$_AddPengeluaranBaruRequest instance) =>
    <String, dynamic>{
      'date': instance.inputTanggal,
      'description': instance.keterangan,
      'quantity': instance.quantity,
      'unit_price': instance.hargaSatuan,
      'another_load': instance.bebanLainlain,
      'atk_load': instance.bebanAtk,
      'vehicle_load': instance.bebanKendaraan,
      'employee_kasbon': instance.kasbonKaryawan,
      'account_payable': instance.hutangUsaha,
      'additional_cost': instance.biayaTambahan,
    };
