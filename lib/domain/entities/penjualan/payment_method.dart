import 'package:equatable/equatable.dart';

import '../../../core/utils/utils.dart';
import 'e_wallet_item_data.dart';
import 'edc_item_data.dart';
import 'transfer_bank_item_data.dart';

class PaymentMethod extends Equatable {
  final String? cashAmount;
  final EWalletItemData? selectedEWallet;
  final EdcItemData? selectedEdc;
  final TransferBankItemData? selectedTransferBank;

  const PaymentMethod({
    this.cashAmount,
    this.selectedEWallet,
    this.selectedEdc,
    this.selectedTransferBank,
  });

  @override
  List<Object?> get props =>
      [cashAmount, selectedEWallet, selectedEdc, selectedTransferBank];

  String selectedPaymentMethod() {
    if (cashAmount != null) {
      return 'Cash';
    }

    if (selectedEWallet != null) {
      return selectedEWallet!.name;
    }

    if (selectedEdc != null) {
      return selectedEdc!.name;
    }

    if (selectedTransferBank != null) {
      return selectedTransferBank!.name;
    }

    return '-';
  }

  String get paymentMechanism {
    if (cashAmount != null) {
      return 'cash';
    }

    if (selectedEWallet != null) {
      return 'e_wallet';
    }

    if (selectedEdc != null) {
      return 'edc';
    }

    if (selectedTransferBank != null) {
      return 'transfer';
    }

    return 'cash';
  }

  int get cashAmountInt => int.parse(removeIdrFormat(cashAmount));
}
