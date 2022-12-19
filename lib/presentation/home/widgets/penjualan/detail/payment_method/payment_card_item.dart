import 'package:flutter/material.dart';

import '../../../../../../core/style/sizes.dart';

class PaymentCardItem extends StatelessWidget {
  final BorderSide side;
  final Function() onTap;
  final String imageAsset;

  const PaymentCardItem({
    Key? key,
    required this.side,
    required this.onTap,
    required this.imageAsset,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Sizes.width134,
      height: Sizes.height53,
      child: Material(
        elevation: Sizes.radius2,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(Sizes.radius5),
          side: side,
        ),
        color: Colors.white,
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(Sizes.radius5),
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: Sizes.width12,
              vertical: Sizes.height9,
            ),
            child: Image.asset(
              imageAsset,
              // width: Sizes.width134,
              // height: Sizes.height53,
            ),
          ),
        ),
      ),
    );
  }
}
