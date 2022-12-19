part of 'input_penjualan_cubit.dart';

@freezed
class InputPenjualanState with _$InputPenjualanState {
  const factory InputPenjualanState({
    required DateTime? filterDate,
    required ResultState<ListPengeluaranResponse> fetchListPengeluaranResult,
    required ResultState<BaseResponse> addPengeluaranBaruResult,
    required String inputTanggal,
    required String inputketerangan,
    required String inputquantity,
    required String inputhargaSatuan,
    required String inputbebanLainlain,
    required String inputbebanAtk,
    required String inputbebanKendaraan,
    required String inputkasbonKaryawan,
    required String inputhutangUsaha,
    required String inputbiayaTambahan,
  }) = _InputPenjualanState;

  factory InputPenjualanState.initial() => const InputPenjualanState(
        filterDate: null,
        fetchListPengeluaranResult: ResultState.initial(),
        addPengeluaranBaruResult: ResultState.initial(),
        inputTanggal: '',
        inputketerangan: '',
        inputquantity: '',
        inputhargaSatuan: '',
        inputbebanLainlain: '',
        inputbebanAtk: '',
        inputbebanKendaraan: '',
        inputkasbonKaryawan: '',
        inputhutangUsaha: '',
        inputbiayaTambahan: '',
      );
}
