import 'package:flutter/material.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

import '../../../../../../core/constants/strings.dart';
import '../../../../../../core/style/sizes.dart';
import '../../../../../../core/utils/get_util.dart';
import '../../../../../../core/widgets/my_text.dart';
import '../../../../../../core/widgets/primary_button.dart';
import '../../../../../../core/widgets/secondary_button.dart';
import '../../../../../core/style/color_palettes.dart';
import '../../../../../domain/entities/transaction/transaction_order_product.dart';
import 'shipping_status_dropdown.dart';

class PreOrderDialog extends StatelessWidget {
  final Function() onPressPositive;
  final TransactionOrderProduct product;

  const PreOrderDialog({
    Key? key,
    required this.onPressPositive,
    required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _isAllowSubmit = product.status.toString().toLowerCase() != 'sudah dikirim';
    final _status = product.status.toString().toLowerCase().obs;

    return Dialog(
      elevation: 0,
      backgroundColor: Colors.transparent,
      insetPadding: EdgeInsets.symmetric(
        horizontal: Sizes.height24,
        vertical: Sizes.height24,
      ),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: Sizes.height28, horizontal: Sizes.width28),
        width: Sizes.heightHalf,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(Sizes.radius10),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: MyText(
                    text: "Status Pengiriman",
                    fontSize: Sizes.sp18,
                    color: ColorPalettes.greyDark100,
                  ),
                ),
                ObxValue<RxString>(
                    (data) => Expanded(
                          child: ShippingStatusDropdown(
                            status: data.value,
                            updateStatus: (value) {
                              data.value = value.toLowerCase();
                            },
                          ),
                        ),
                    _status)
              ],
            ),
            Container(
              width: double.infinity,
              height: Sizes.height2,
              color: ColorPalettes.bgGrey4,
              margin: EdgeInsets.symmetric(vertical: Sizes.height24),
            ),
            Row(
              mainAxisAlignment: _isAllowSubmit ? MainAxisAlignment.spaceBetween : MainAxisAlignment.center,
              children: [
                SecondaryButton(
                  height: Sizes.height50,
                  width: Sizes.width150,
                  text: Strings.cancel,
                  onPressed: _onPressCancel,
                ),
                Visibility(
                  visible: _isAllowSubmit,
                  child: PrimaryButton(
                    height: Sizes.height50,
                    width: Sizes.width150,
                    text: "OK",
                    onPressed: () {
                      if (_status.value != 'belum dikirim') {
                        _onPressSave();
                      } else {
                        _onPressCancel();
                      }
                    },
                  ),
                )
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
