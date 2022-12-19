import 'package:flutter/material.dart';

import '../../../core/style/color_palettes.dart';
import '../../../core/style/sizes.dart';
import 'login_button.dart';
import 'login_form.dart';
import 'login_tite.dart';

class LoginCard extends StatelessWidget {
  const LoginCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(Sizes.radius15),
      elevation: Sizes.radius30,
      shadowColor: ColorPalettes.shadowCard,
      child: SizedBox(
        width: Sizes.width563,
        // height: Sizes.height725,
        child: SingleChildScrollView(
          physics: const NeverScrollableScrollPhysics(),
          padding: EdgeInsets.symmetric(
            horizontal: Sizes.width63,
            vertical: Sizes.height97,
          ),
          child: Column(
            children: const [
              LoginTitle(),
              LoginForm(),
              LoginButton(),
            ],
          ),
        ),
      ),
    );
  }
}
