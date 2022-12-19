import 'package:flutter/material.dart';

import '../../core/style/sizes.dart';
import '../../core/widgets/beautyy_glow_background.dart';
import '../../core/widgets/gradient_container.dart';
import 'widgets/login_card.dart';

class LoginPage extends StatelessWidget {
  static const routeName = '/login';

  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: GradientContainer(
            height: Sizes.heightFull,
            width: Sizes.widthFull,
            child: Stack(
              // fit: StackFit.expand,
              alignment: Alignment.center,
              children: const [
                BeautyyGlowBackground(),
                LoginCard(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
