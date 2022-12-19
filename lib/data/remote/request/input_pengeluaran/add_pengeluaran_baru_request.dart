// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_pengeluaran_baru_request.freezed.dart';
part 'add_pengeluaran_baru_request.g.dart';

@freezed
class AddPengeluaranBaruRequest with _$AddPengeluaranBaruRequest {
  const factory AddPengeluaranBaruRequest({
    @JsonKey(name: 'date') required String inputTanggal,
    @JsonKey(name: 'description') required String keterangan,
    @JsonKey(name: 'quantity') required String quantity,
    @JsonKey(name: 'unit_price') required String hargaSatuan,
    @JsonKey(name: 'another_load') required String bebanLainlain,
    @JsonKey(name: 'atk_load') required String bebanAtk,
    @JsonKey(name: 'vehicle_load') required String bebanKendaraan,
    @JsonKey(name: 'employee_kasbon') required String kasbonKaryawan,
    @JsonKey(name: 'account_payable') required String hutangUsaha,
    @JsonKey(name: 'additional_cost') required String biayaTambahan,
  }) = _AddPengeluaranBaruRequest;

  factory AddPengeluaranBaruRequest.fromJson(Map<String, dynamic> json) =>
      _$AddPengeluaranBaruRequestFromJson(json);
}
