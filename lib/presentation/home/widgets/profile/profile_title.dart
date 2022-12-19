import 'package:flutter/material.dart';

import '../../../../core/constants/strings.dart';
import '../../../../core/style/sizes.dart';
import '../../../../core/widgets/my_text.dart';

class ProfileTitle extends StatelessWidget {
  const ProfileTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: EdgeInsets.only(
          top: Sizes.height40,
          left: Sizes.width104,
        ),
        child: MyText(
          text: Strings.profile,
          fontSize: Sizes.sp32,
          fontWeight: FontWeight.w500,
          color: Colors.white,
        ),
      ),
    );
  }
}
