import 'package:flutter/material.dart';

import '../../../../../../../core/constants/strings.dart';
import '../../../../../../../core/style/sizes.dart';
import '../../../../../../../core/widgets/my_text.dart';
import 'e_wallet_list.dart';

class EWalletSection extends StatelessWidget {
  const EWalletSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: Sizes.height54,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MyText(
            margin: EdgeInsets.only(
              left: Sizes.width20,
            ),
            text: Strings.eWallet,
            fontSize: Sizes.sp18,
            fontWeight: FontWeight.w700,
          ),
          SizedBox(
            height: Sizes.height17,
          ),
          const EWalletList(),
        ],
      ),
    );
  }
}
