import 'package:flutter/material.dart';
import 'package:flutter_kasir/core/utils/get_util.dart';
import 'package:flutter_kasir/core/widgets/primary_button.dart';
import 'package:flutter_kasir/core/widgets/secondary_button.dart';
import 'package:get/get.dart';
import '../../../../core/constants/strings.dart';
import '../../../../core/style/sizes.dart';
import '../../../../core/widgets/my_text.dart';

class DeleteConfirmationDialog extends StatelessWidget {
  const DeleteConfirmationDialog(
      {Key? key, required this.productName, required this.onPressPositive})
      : super(key: key);
  final String productName;
  final Function() onPressPositive;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      elevation: 0,
      insetPadding: EdgeInsets.symmetric(
        horizontal: Sizes.height24,
        vertical: Sizes.height24,
      ),
      title: MyText(
        text: Strings.refundConfirmationDialogTitle,
        fontSize: Sizes.sp32,
        fontWeight: FontWeight.bold,
      ),
      content: Container(
        width: Sizes.width968,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(Sizes.radius10),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            MyText(
              text: Strings.refundConfirmationDialogContent,
              fontSize: Sizes.sp24,
            ),
            SizedBox(
              height: Sizes.height10,
            ),
            MyText(
              text: productName,
              fontSize: Sizes.sp24,
            ),
          ],
        ),
      ),
      actions: [
        SecondaryButton(
          height: Sizes.height66,
          width: Sizes.width170,
          text: Strings.cancel,
          onPressed: _onPressCancel,
        ),
        PrimaryButton(
          height: Sizes.height66,
          width: Sizes.width170,
          text: Strings.refund,
          onPressed: _onPressConfirm,
        ),
      ],
    );
  }

  _onPressCancel() {
    GetUtil.dismissDialog();
  }

  _onPressConfirm() {
    GetUtil.dismissDialog();
    onPressPositive();
  }
}
