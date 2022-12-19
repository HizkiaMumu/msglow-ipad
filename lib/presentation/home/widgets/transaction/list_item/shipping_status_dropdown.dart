import 'package:flutter/material.dart';

import '../../../../../../core/style/color_palettes.dart';
import '../../../../../../core/style/sizes.dart';
import '../../../../../../core/widgets/my_text.dart';
import '../../../../../domain/entities/transaction/transaction.dart';

class ShippingStatusDropdown extends StatelessWidget {
  final String status;
  final Function(String) updateStatus;

  final shippingStatusCategories = const [
    ShippingStatusCategory(id: 1, name: 'Belum dikirim'),
    ShippingStatusCategory(id: 2, name: 'Sudah dikirim'),
  ];

  const ShippingStatusDropdown({
    Key? key,
    required this.status,
    required this.updateStatus,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Sizes.height55,
      padding: EdgeInsets.symmetric(horizontal: Sizes.width8),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(3)),
        color: ColorPalettes.bgGrey2,
      ),
      child: DropdownButton(
        isExpanded: true,
        value: shippingStatusCategories.firstWhere((element) => element.name.toLowerCase() == status),
        icon: Icon(Icons.keyboard_arrow_down_rounded, size: Sizes.height24),
        elevation: 16,
        underline: const SizedBox(),
        onChanged: (value) {
          final newCategory = value as ShippingStatusCategory;
          updateStatus(newCategory.name);
        },
        items: shippingStatusCategories
            .map(
              (e) => DropdownMenuItem(
                child: MyText(
                  text: e.name,
                  fontSize: Sizes.sp16,
                  color: ColorPalettes.greyText4,
                  fontWeight: FontWeight.w500,
                  alignment: Alignment.centerLeft,
                ),
                value: e,
              ),
            )
            .toList(),
      ),
    );
  }
}
