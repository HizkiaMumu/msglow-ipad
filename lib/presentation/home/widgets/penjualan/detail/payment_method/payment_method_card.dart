import 'package:flutter/material.dart';

import '../../../../../../core/constants/strings.dart';
import '../../../../../../core/style/sizes.dart';
import '../../../../../../core/widgets/my_text.dart';
import '../../../../../../core/widgets/rounded_border_card.dart';
import 'e_wallet/e_wallet.section.dart';
import 'edc/edc_section.dart';
import 'input_pembayaran_form.dart';
import 'transfer_bank/transfer_bank_section.dart';

class PaymentMethodCard extends StatelessWidget {
  const PaymentMethodCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RoundedBorderCard(
      margin: EdgeInsets.only(
        top: Sizes.height33,
      ),
      padding: EdgeInsets.only(
        bottom: Sizes.height47,
      ),
      radius: Sizes.radius14,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Title
          MyText(
            text: Strings.metodePembayaran,
            fontSize: Sizes.sp21,
            fontWeight: FontWeight.w700,
            margin: EdgeInsets.only(
              top: Sizes.height74,
              left: Sizes.width20,
            ),
          ),
          // Input pembayaran form
          const InputPembayaranForm(),
          const EWalletSection(),
          const EdcSection(),
          const TransferBankSection(),
        ],
      ),
    );
  }
}
