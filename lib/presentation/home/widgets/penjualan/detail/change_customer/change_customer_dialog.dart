import 'package:flutter/material.dart';

import '../../../../../../core/style/sizes.dart';
import 'customer_list.dart';

class ChangeCustomerDialog extends StatelessWidget {
  const ChangeCustomerDialog({Key? key}) : super(key: key);

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
        padding: EdgeInsets.all(Sizes.height16),
        // height: Sizes.heightHalf,
        width: Sizes.heightHalf,
        // constraints: BoxConstraints(
        //   maxHeight: Sizes.heightHalf,
        // ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(Sizes.radius10),
        ),
        child: const CustomerList(),
      ),
    );
  }
}
