import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';

import 'detail/detail_section.dart';
import 'list_product/list_product_section.dart';

class PenjualanView extends StatelessWidget {
  const PenjualanView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return KeyboardDismissOnTap(
      child: Row(
        children: [
          Expanded(
            child: ListProductSection(),
          ),
          const DetailSection(),
        ],
      ),
    );
  }
}
