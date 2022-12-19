import 'package:flutter/material.dart';

import '../../../../../../core/style/sizes.dart';
import '../../../../../../core/widgets/my_text.dart';
import 'custom_order_form.dart';

class CustomOrderDialog extends StatelessWidget {
  const CustomOrderDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      elevation: 0,
      backgroundColor: Colors.transparent,
      insetPadding: EdgeInsets.symmetric(
        horizontal: Sizes.height24,
        vertical: Sizes.height24,
      ),
      child: Container(
        // height: Sizes.heightHalf,
        width: Sizes.width968,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(Sizes.radius10),
        ),
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(
            vertical: Sizes.height71,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              MyText(
                text: 'Detail Custom',
                fontSize: Sizes.sp32,
                fontWeight: FontWeight.bold,
                margin: EdgeInsets.only(
                  left: Sizes.height71,
                  bottom: Sizes.height52,
                ),
              ),
              const Divider(
                height: 1,
                thickness: 1,
              ),
              const CustomOrderForm(),
            ],
          ),
        ),
      ),
    );
  }
}
