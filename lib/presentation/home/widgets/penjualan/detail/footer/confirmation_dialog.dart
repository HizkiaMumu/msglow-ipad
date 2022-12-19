import 'package:flutter/material.dart';

import '../../../../../../core/constants/strings.dart';
import '../../../../../../core/style/sizes.dart';
import '../../../../../../core/utils/get_util.dart';
import '../../../../../../core/widgets/my_text.dart';
import '../../../../../../core/widgets/primary_button.dart';
import '../../../../../../core/widgets/secondary_button.dart';

class ConfirmationDialog extends StatelessWidget {
  final Function() onPressPositive;
  final String message;
  final String btnPositiveText;

  const ConfirmationDialog({
    Key? key,
    required this.onPressPositive,
    required this.message,
    required this.btnPositiveText,
  }) : super(key: key);

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
        padding: EdgeInsets.all(Sizes.height20),
        // height: Sizes.heightHalf,
        width: Sizes.heightHalf,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(Sizes.radius10),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            MyText(
              text: message,
              fontSize: Sizes.sp20,
              margin: EdgeInsets.only(
                bottom: Sizes.height40,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SecondaryButton(
                  height: Sizes.height66,
                  width: Sizes.width170,
                  text: Strings.cancel,
                  onPressed: _onPressCancel,
                ),
                PrimaryButton(
                  height: Sizes.height66,
                  width: Sizes.width170,
                  text: btnPositiveText,
                  onPressed: _onPressSave,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  _onPressSave() {
    GetUtil.dismissDialog();
    onPressPositive();
  }

  _onPressCancel() {
    GetUtil.dismissDialog();
  }
}
