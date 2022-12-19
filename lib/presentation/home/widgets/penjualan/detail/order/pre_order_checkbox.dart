import 'package:flutter/material.dart';

import '../../../../../../core/style/color_palettes.dart';
import '../../../../../../core/style/sizes.dart';
import '../../../../../../core/widgets/my_text.dart';

class PreOrderCheckbox extends StatelessWidget {
  final bool value;
  final Function(bool?) onChanged;

  const PreOrderCheckbox({
    Key? key,
    required this.value,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onChanged(!value),
      child: Container(
        margin: EdgeInsets.only(top: Sizes.height15),
        padding: const EdgeInsets.symmetric(vertical: 5),
        child: Row(
          children: [
            Icon(
              value ? Icons.check_box : Icons.check_box_outline_blank,
              size: Sizes.height20,
              color: value ? ColorPalettes.bgGoldMenuItem : Colors.grey,
            ),
            SizedBox(width: Sizes.width5),
            MyText(
              text: 'Pre-order',
              fontSize: Sizes.sp13,
              fontWeight: FontWeight.w500,
              textType: TextType.bodyText1,
            ),
          ],
        ),
      ),
    );
  }
}
