import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/constants/constants.dart';
import '../../../../../core/constants/image_asset.dart';
import '../../../../../core/constants/strings.dart';
import '../../../../../core/style/color_palettes.dart';
import '../../../../../core/style/sizes.dart';
import '../../../../../core/utils/utils.dart';
import '../../../../../core/widgets/my_text.dart';
import '../../../../../domain/entities/transaction/order.dart';

class PaymentStatusSection extends StatelessWidget {
  final Order order;

  const PaymentStatusSection({Key? key, required this.order}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _isPaid = order.paymentStatus == Constants.paymentStatusPaid;
    var _bgColor = ColorPalettes.bgGreen50;
    var _textColor = ColorPalettes.green;

    if (!_isPaid) {
      _bgColor = ColorPalettes.bgGoldOp15;
      _textColor = ColorPalettes.gold;
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Title
        MyText(
          text: Strings.status,
          fontSize: Sizes.sp18,
          fontWeight: FontWeight.w500,
          color: ColorPalettes.grey75,
          margin: EdgeInsets.only(
            bottom: Sizes.height10,
          ),
        ),
        // Status
        Container(
          height: Sizes.height55,
          padding: EdgeInsets.symmetric(
            horizontal: Sizes.width21,
            vertical: Sizes.height14,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(Sizes.radius8),
            color: _bgColor,
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              MyText(
                text: capitalizeFirstofEach(order.paymentStatus),
                fontSize: Sizes.sp18,
                fontWeight: FontWeight.w500,
                color: _textColor,
              ),
              Visibility(
                visible: _isPaid,
                child: Padding(
                  padding: EdgeInsets.only(
                    left: Sizes.width11,
                  ),
                  child: SvgPicture.asset(
                    ImageAsset.icPaid,
                    height: Sizes.height24,
                    width: Sizes.height24,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
