import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/unions/result_state.dart';
import '../../../../../core/utils/date_util.dart';
import '../../../../../core/utils/utils.dart';
import '../../../../../data/remote/response/base_response.dart';
import '../../../../../data/remote/response/input_penjualan/list_pengeluaran_response.dart';
import '../../../../../domain/usecases/add_pengeluaran_baru_usecase.dart';
import '../../../../../domain/usecases/fetch_list_pengeluaran_usecase.dart';

part 'input_penjualan_cubit.freezed.dart';
part 'input_penjualan_state.dart';

@injectable
class InputPenjualanCubit extends Cubit<InputPenjualanState> {
  final FetchListPengeluaranUseCase _fetchListPengeluaranUseCase;
  final AddPengeluaranBaruUseCase _addPengeluaranBaruUseCase;

  InputPenjualanCubit(
      this._fetchListPengeluaranUseCase, this._addPengeluaranBaruUseCase)
      : super(InputPenjualanState.initial());

  fetchListPenjualan() async {
    emit(state.copyWith(
        fetchListPengeluaranResult: const ResultState.loading()));

    final _result =
        await _fetchListPengeluaranUseCase(FetchListPengeluaranUseCaseParams(
      filterDate: state.filterDate,
    ));

    _result.fold(
      (l) => emit(state.copyWith(
          fetchListPengeluaranResult: ResultState.error(failure: l))),
      (r) => emit(state.copyWith(
          fetchListPengeluaranResult: ResultState.success(data: r))),
    );
  }

  changeFilterDate(DateTime? filterDate) {
    emit(state.copyWith(filterDate: filterDate));

    fetchListPenjualan();
  }

  changeInputTanggal(DateTime? value) {
    emit(state.copyWith(
        inputTanggal: DateUtil.dateTimeToFormattedDate(
      value,
      datePattern: 'yyyy-MM-dd',
    )));
  }

  changeInputKeterangan(String? value) {
    emit(state.copyWith(inputketerangan: value ?? ''));
  }

  changeInputquantity(String? value) {
    emit(state.copyWith(inputquantity: value ?? ''));
  }

  changeInputhargaSatuan(String? value) {
    emit(state.copyWith(inputhargaSatuan: value ?? ''));
  }

  changeInputbebanLainlain(String? value) {
    emit(state.copyWith(inputbebanLainlain: value ?? ''));
  }

  changeInputbebanAtk(String? value) {
    emit(state.copyWith(inputbebanAtk: value ?? ''));
  }

  changeInputbebanKendaraan(String? value) {
    emit(state.copyWith(inputbebanKendaraan: value ?? ''));
  }

  changeInputkasbonKaryawan(String? value) {
    emit(state.copyWith(inputkasbonKaryawan: value ?? ''));
  }

  changeInputhutangUsaha(String? value) {
    emit(state.copyWith(inputhutangUsaha: value ?? ''));
  }

  changeInputbiayaTambahan(String? value) {
    emit(state.copyWith(inputbiayaTambahan: value ?? ''));
  }

  addPengeluaranBaru() async {
    emit(state.copyWith(addPengeluaranBaruResult: const ResultState.loading()));

    final _result =
        await _addPengeluaranBaruUseCase(AddPengeluaranBaruUseCaseParams(
      inputTanggal: state.inputTanggal,
      keterangan: state.inputketerangan,
      quantity: state.inputquantity,
      hargaSatuan: removeIdrFormat(state.inputhargaSatuan),
      bebanLainlain: removeIdrFormat(state.inputbebanLainlain),
      bebanAtk: removeIdrFormat(state.inputbebanAtk),
      bebanKendaraan: removeIdrFormat(state.inputbebanKendaraan),
      kasbonKaryawan: removeIdrFormat(state.inputkasbonKaryawan),
      hutangUsaha: removeIdrFormat(state.inputhutangUsaha),
      biayaTambahan: removeIdrFormat(state.inputbiayaTambahan),
    ));

    _result.fold(
      (l) => emit(state.copyWith(
          addPengeluaranBaruResult: ResultState.error(failure: l))),
      (r) => emit(state.copyWith(
          addPengeluaranBaruResult: ResultState.success(data: r))),
    );
  }
}
