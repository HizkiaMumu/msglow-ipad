import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

import '../../../../../../core/constants/strings.dart';
import '../../../../../../core/style/color_palettes.dart';
import '../../../../../../core/style/sizes.dart';
import '../../../../../../core/utils/form_builder_util.dart';
import '../../../../../../core/widgets/my_text.dart';

class RefundReasonSelector extends StatelessWidget {
  const RefundReasonSelector({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _items = [
      'Produk Retur',
      'Kesalahan Transaksi',
      'Pembatalan Pemesananan',
      'Lainnya',
    ];
    return FormBuilderChoiceChip(
      name: Strings.refundNote,
      direction: Axis.vertical,
      backgroundColor: ColorPalettes.goldLight,
      selectedColor: ColorPalettes.gold.withOpacity(0.3),
      labelPadding: EdgeInsets.symmetric(
        horizontal: Sizes.width20,
        vertical: Sizes.height10,
      ),
      decoration: const InputDecoration(
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
        ),
      ),
      spacing: Sizes.height20,
      runAlignment: WrapAlignment.center,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
      validator: FormBuilderValidators.compose(
        [
          FormBuilderUtil.emptyValidator(context),
        ],
      ),
      options: _items
          .map((e) => FormBuilderFieldOption(
                value: e,
                child: MyText(
                  width: Sizes.width750,
                  text: e,
                  fontSize: Sizes.sp18,
                  fontWeight: FontWeight.w500,
                  color: ColorPalettes.greyText5,
                ),
              ))
          .toList(),
      onChanged: (value) {},
    );
  }
}
