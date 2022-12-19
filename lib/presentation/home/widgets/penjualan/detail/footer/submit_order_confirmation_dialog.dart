import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../../core/constants/strings.dart';
import '../../../../../../core/style/sizes.dart';
import '../../../../../../core/widgets/my_text.dart';
import '../../../../../../core/widgets/primary_button.dart';
import '../../../../../../core/widgets/secondary_button.dart';
import '../../../../../../domain/entities/login/user.dart';
import '../../list_product/list_product_section_controller.dart';

class SubmitOrderConfirmationDialog extends GetView<ListProductSectionController> {
  const SubmitOrderConfirmationDialog({
    Key? key,
    required this.onPressSave,
    required this.okText,
  }) : super(key: key);

  final VoidCallback onPressSave;
  final String okText;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      elevation: 0,
      backgroundColor: Colors.transparent,
      content: Container(
        padding: EdgeInsets.all(Sizes.height50),
        // height: Sizes.heightHalf,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(Sizes.radius10),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            MyText(
              text: Strings.submitOrderConfirmation,
              fontSize: Sizes.sp20,
              margin: EdgeInsets.only(
                bottom: Sizes.height40,
              ),
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              MyText(
                text: Strings.namaAkun,
                fontSize: Sizes.sp20,
              ),
              Obx(() {
                if (controller.listKasirObs.isEmpty) {
                  controller.loadKasirList();
                  return const CircularProgressIndicator();
                }
                return DropdownButton<User>(
                    value: controller.selectedKasirObs.value,
                    items: controller.listKasirObs
                        .map((e) => DropdownMenuItem<User>(
                              child: Text(e.name ?? "-"),
                              value: e,
                            ))
                        .toList(),
                    onChanged: (val) => controller.selectedKasirObs.value = val);
              })
            ]),
            SizedBox(height: Sizes.height40),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SecondaryButton(
                  height: Sizes.height66,
                  width: Sizes.width170,
                  text: Strings.cancel,
                  onPressed: () => Get.back(),
                ),
                PrimaryButton(
                  height: Sizes.height66,
                  width: Sizes.width170,
                  text: okText,
                  onPressed: onPressSave,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
