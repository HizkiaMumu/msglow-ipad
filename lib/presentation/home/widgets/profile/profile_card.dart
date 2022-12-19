import 'package:flutter/material.dart';

import '../../../../core/style/color_palettes.dart';
import '../../../../core/style/sizes.dart';
import 'profile_avatar.dart';
import 'profile_footer_button.dart';
import 'profile_form.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        Padding(
          padding: EdgeInsets.only(
            top: Sizes.height86,
          ),
          child: Material(
            borderRadius: BorderRadius.circular(Sizes.radius15),
            elevation: Sizes.radius30,
            shadowColor: ColorPalettes.shadowCard,
            color: Colors.white,
            child: SizedBox(
              width: Sizes.width563,
              child: SingleChildScrollView(
                physics: const NeverScrollableScrollPhysics(),
                padding: EdgeInsets.only(
                  top: Sizes.height218,
                  left: Sizes.width52,
                  right: Sizes.width52,
                  bottom: Sizes.height71,
                ),
                child: Column(
                  children: const [
                    ProfileForm(),
                    ProfileFooterButton(),
                  ],
                ),
              ),
            ),
          ),
        ),
        const ProfileAvatar(),
      ],
    );
  }
}
