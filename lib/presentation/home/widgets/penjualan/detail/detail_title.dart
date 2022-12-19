import 'package:flutter/material.dart';

import '../../../../../core/constants/strings.dart';
import '../../../../../core/style/color_palettes.dart';
import '../../../../../core/style/sizes.dart';
import '../../../../../core/utils/date_util.dart';
import '../../../../../core/widgets/my_text.dart';

class DetailTitle extends StatelessWidget {
  const DetailTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: Sizes.height100,
        left: Sizes.width38,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MyText(
            text: Strings.detail,
            textType: TextType.subtitle1,
            fontWeight: FontWeight.w700,
            color: Colors.black,
            fontSize: Sizes.sp24,
          ),
          SizedBox(
            height: Sizes.height15,
          ),
          StreamBuilder(
            stream: Stream.periodic(const Duration(seconds: 1)),
            builder: (context, snapshot) {
              debugPrint('${snapshot.data}');
              return MyText(
                text: DateUtil.formatCurrentDate(
                    datePattern: 'dd MMMM yyyy, HH:mm'),
                fontWeight: FontWeight.w500,
                color: ColorPalettes.greyText2,
                fontSize: Sizes.sp18,
              );
            },
          ),
        ],
      ),
    );
  }
}
