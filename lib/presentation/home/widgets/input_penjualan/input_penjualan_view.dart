import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';

import '../../../../core/constants/strings.dart';
import '../../../../core/style/sizes.dart';
import '../../../../core/widgets/gradient_container.dart';
import '../../../../core/widgets/my_text.dart';
import 'filter_date_field.dart';
import 'input_penjualan_table.dart';

class InputPenjualanView extends StatelessWidget {
  const InputPenjualanView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return KeyboardDismissOnTap(
      child: LayoutBuilder(
        builder: (context, constraints) {
          return GradientContainer(
            width: constraints.maxWidth,
            child: Stack(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Title
                    Padding(
                      padding: EdgeInsets.only(
                        top: Sizes.height40,
                        left: Sizes.width58,
                        right: Sizes.height50,
                        bottom: Sizes.height29,
                      ),
                      child: MyText(
                        text: Strings.kas,
                        fontSize: Sizes.sp32,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                    const FilterDateField(),
                    const Expanded(
                      child: InputPenjualanTable(),
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
