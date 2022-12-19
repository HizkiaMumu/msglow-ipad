import 'package:equatable/equatable.dart';

import '../../../core/constants/image_asset.dart';
import '../../../data/remote/response/penjualan/bank_account_list_response.dart';

class TransferBankItemData extends Equatable {
  final int id;
  final String imageAsset;
  final String name;
  String? namaPengirim;
  String? namaBank;
  String? noRekening;

  BankAccount? bankAccount;

  TransferBankItemData({
    required this.id,
    required this.imageAsset,
    required this.name,
    this.namaPengirim,
    this.namaBank,
    this.noRekening,
    this.bankAccount,
  });

  static final items = [
    TransferBankItemData(
      id: 0,
      imageAsset: ImageAsset.imgTransferBank,
      name: 'Transfer',
    ),
  ];

  @override
  List<Object?> get props => [id, imageAsset, name, namaPengirim, namaBank, noRekening];
}
