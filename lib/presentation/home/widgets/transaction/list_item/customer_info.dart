import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../../../../core/constants/constants.dart';
import '../../../../../core/constants/strings.dart';
import '../../../../../core/style/color_palettes.dart';
import '../../../../../core/style/sizes.dart';
import '../../../../../core/widgets/my_cached_network_image.dart';
import '../../../../../core/widgets/my_text.dart';
import '../../../../../domain/entities/penjualan/customer/customer_element.dart';

class CustomerInfo extends StatelessWidget {
  final CustomerElement? customer;

  const CustomerInfo({Key? key, required this.customer}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // Customer avatar
        ClipOval(
          child: MyCachedNetworkImage(
            imageUrl: Constants.placeholderAvatarUrl,
            height: Sizes.height76,
            width: Sizes.height76,
          ),
        ),
        SizedBox(
          width: Sizes.width15,
        ),
        // Customer info
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Customer name section
              Row(
                children: [
                  MyText(
                    text: customer?.fullName ?? Strings.nonMember,
                    fontSize: Sizes.sp24,
                    fontWeight: FontWeight.w500,
                  ),
                  if (customer?.statusCustomer?.title != null)
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: Sizes.width20,
                        vertical: Sizes.height8,
                      ),
                      margin: EdgeInsets.only(
                        left: Sizes.width8,
                      ),
                      decoration: BoxDecoration(
                        color: ColorPalettes.bgGoldOp15,
                        borderRadius: BorderRadius.circular(Sizes.radius25),
                      ),
                      child: MyText(
                        text: customer?.statusCustomer?.title ?? '-',
                        fontSize: Sizes.sp11,
                        color: ColorPalettes.bgProductItemGold,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                ],
              ),
              SizedBox(
                height: Sizes.height8,
              ),
              // Customer address
              MyText(
                text: customer?.address ?? '-',
                fontSize: Sizes.sp18,
                fontWeight: FontWeight.w500,
                color: ColorPalettes.greyText,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
