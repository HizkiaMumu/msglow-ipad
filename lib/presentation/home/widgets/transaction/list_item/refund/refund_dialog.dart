import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

import '../../../../../../core/constants/strings.dart';
import '../../../../../../core/style/sizes.dart';
import '../../../../../../core/utils/get_util.dart';
import '../../../../../../core/widgets/primary_button.dart';
import '../../../../../../core/widgets/secondary_button.dart';
import 'refund_reason_selector.dart';

class RefundDialog extends StatefulWidget {
  final Function(String) onPressPositive;

  const RefundDialog({Key? key, required this.onPressPositive})
      : super(key: key);

  @override
  State<RefundDialog> createState() => _RefundDialogState();
}

class _RefundDialogState extends State<RefundDialog> {
  final _formKey = GlobalKey<FormBuilderState>();

  @override
  void dispose() {
    _formKey.currentState?.dispose();
    super.dispose();
  }

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
        width: Sizes.width856,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(Sizes.radius10),
        ),
        child: FormBuilder(
          key: _formKey,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const RefundReasonSelector(),
              SizedBox(
                height: Sizes.height50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SecondaryButton(
                    height: Sizes.height66,
                    width: Sizes.width170,
                    text: Strings.cancel,
                    onPressed: _onPressCancel,
                  ),
                  SizedBox(
                    width: Sizes.width32,
                  ),
                  PrimaryButton(
                    height: Sizes.height66,
                    width: Sizes.width170,
                    text: Strings.refund,
                    onPressed: _onPressSave,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  _onPressSave() {
    if (!(_formKey.currentState?.saveAndValidate() ?? false)) {
      return;
    }

    GetUtil.dismissDialog();
    widget.onPressPositive(_formKey.currentState!.value[Strings.refundNote]);
  }

  _onPressCancel() {
    GetUtil.dismissDialog();
  }
}
