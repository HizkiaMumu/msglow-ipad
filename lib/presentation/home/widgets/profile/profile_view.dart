import 'package:flutter/material.dart';

import '../../../../core/style/sizes.dart';
import '../../../../core/widgets/beautyy_glow_background.dart';
import '../../../../core/widgets/gradient_container.dart';
import 'profile_card.dart';
import 'profile_title.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return GradientContainer(
        width: constraints.maxWidth,
        child: SingleChildScrollView(
          padding: EdgeInsets.only(
            bottom: Sizes.height100,
          ),
          child: SizedBox(
            height: Sizes.heightFull,
            child: Stack(
              children: [
                const BeautyyGlowBackground(),
                Column(
                  children: const [
                    ProfileTitle(),
                    ProfileCard(),
                  ],
                ),
              ],
            ),
          ),
        ),
      );
    });
  }
}
