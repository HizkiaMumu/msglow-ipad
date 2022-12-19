import 'package:flutter/material.dart';

import '../../../../../../../core/constants/strings.dart';
import '../../../../../../../core/style/sizes.dart';
import '../../../../../../../core/widgets/my_text.dart';
import 'edc_list.dart';

class EdcSection extends StatelessWidget {
  const EdcSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: Sizes.height52,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MyText(
            margin: EdgeInsets.only(
              left: Sizes.width20,
            ),
            text: Strings.edc,
            fontSize: Sizes.sp18,
            fontWeight: FontWeight.w700,
          ),
          SizedBox(
            height: Sizes.height17,
          ),
          const EdcList(),
        ],
      ),
    );
  }
}
