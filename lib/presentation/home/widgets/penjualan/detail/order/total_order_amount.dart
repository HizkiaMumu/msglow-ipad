import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../core/constants/strings.dart';
import '../../../../../../core/style/color_palettes.dart';
import '../../../../../../core/style/sizes.dart';
import '../../../../../../core/utils/utils.dart';
import '../../../../../../core/widgets/my_text.dart';
import '../../cubit/penjualan_cubit.dart';

class TotalOrderAmount extends StatelessWidget {
  const TotalOrderAmount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: Sizes.height33,
      ),
      child: Column(
        children: [
          // Subtotal
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              MyText(
                text: Strings.subtotal,
                fontSize: Sizes.sp16,
                fontWeight: FontWeight.w500,
                textType: TextType.bodyText1,
              ),
              MyText(
                text: formatToIdr(context
                    .select((PenjualanCubit value) => value.state.subTotal)),
                fontSize: Sizes.sp16,
                fontWeight: FontWeight.w500,
                textType: TextType.bodyText1,
              ),
            ],
          ),
          SizedBox(
            height: Sizes.height16,
          ),
          // Diskon
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              MyText(
                text: Strings.diskon,
                fontSize: Sizes.sp16,
                fontWeight: FontWeight.w500,
                textType: TextType.bodyText1,
              ),
              MyText(
                text: formatToIdr(context
                    .select((PenjualanCubit value) => value.state.discount)),
                fontSize: Sizes.sp16,
                fontWeight: FontWeight.w500,
                textType: TextType.bodyText1,
              ),
            ],
          ),
          SizedBox(
            height: Sizes.height48,
          ),
          // Total
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              MyText(
                text: Strings.total,
                fontSize: Sizes.sp16,
                fontWeight: FontWeight.w500,
                textType: TextType.bodyText1,
              ),
              MyText(
                text: formatToIdr(context
                    .select((PenjualanCubit value) => value.state.total)),
                fontSize: Sizes.sp24,
                fontWeight: FontWeight.w500,
                textType: TextType.subtitle1,
                color: ColorPalettes.gold,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
