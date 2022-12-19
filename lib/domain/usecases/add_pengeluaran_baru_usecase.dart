import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../core/base/usecase/future_usecase.dart';
import '../../core/unions/failure.dart';
import '../../data/remote/response/base_response.dart';
import '../repositories/my_repository.dart';

class AddPengeluaranBaruUseCaseParams {
  final String inputTanggal;
  final String keterangan;
  final String quantity;
  final String hargaSatuan;
  final String bebanLainlain;
  final String bebanAtk;
  final String bebanKendaraan;
  final String kasbonKaryawan;
  final String hutangUsaha;
  final String biayaTambahan;

  const AddPengeluaranBaruUseCaseParams({
    required this.inputTanggal,
    required this.keterangan,
    required this.quantity,
    required this.hargaSatuan,
    required this.bebanLainlain,
    required this.bebanAtk,
    required this.bebanKendaraan,
    required this.kasbonKaryawan,
    required this.hutangUsaha,
    required this.biayaTambahan,
  });
}

@lazySingleton
class AddPengeluaranBaruUseCase
    extends FutureUseCase<BaseResponse, AddPengeluaranBaruUseCaseParams> {
  final MyRepository myRepository;

  AddPengeluaranBaruUseCase({required this.myRepository});

  @override
  Future<Either<Failure, BaseResponse>> execute(
      AddPengeluaranBaruUseCaseParams params) {
    return myRepository.addPengeluaranBaru(params);
  }
}
