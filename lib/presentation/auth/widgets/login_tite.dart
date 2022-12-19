import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../../core/constants/strings.dart';
import '../../../core/style/color_palettes.dart';
import '../../../core/style/sizes.dart';
import '../../../core/widgets/my_text.dart';

class LoginTitle extends StatelessWidget {
  const LoginTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MyText(
      text: Strings.logIn,
      fontWeight: FontWeight.w700,
      fontSize: Sizes.sp36,
      color: ColorPalettes.gold,
    );
  }
}
