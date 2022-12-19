import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../../../../../core/constants/strings.dart';
import '../../../../../../core/style/sizes.dart';
import '../../../../../../core/utils/get_util.dart';
import '../../../../../../core/widgets/my_text.dart';
import '../../../../../../core/widgets/primary_button.dart';
import 'custom_order_dialog.dart';

class CustomOrder extends StatelessWidget {
  const CustomOrder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        MyText(
          text: Strings.detailPembelian,
          fontSize: Sizes.sp21,
          fontWeight: FontWeight.bold,
        ),
        const Spacer(),
        PrimaryButton(
          text: 'Custom',
          width: Sizes.width82,
          height: Sizes.height39,
          fontSize: Sizes.sp12,
          fontWeight: FontWeight.w500,
          onPressed: () => _onPressCustom(context),
        ),
      ],
    );
  }

  _onPressCustom(BuildContext context) async {
    await GetUtil.showDialog(const CustomOrderDialog());
  }
}
