import 'package:flutter/material.dart';

import '../../../core/constants/image_asset.dart';
import '../../../core/style/color_palettes.dart';
import '../../../core/style/sizes.dart';
import '../../../domain/entities/home/nav_drawer_item.dart';
import 'home_navigation_menu_item.dart';

class HomeNavigationMenu extends StatelessWidget {
  const HomeNavigationMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Container(
          height: constraints.maxHeight,
          width: Sizes.width137,
          color: ColorPalettes.bgNavigationMenu,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: Sizes.height149,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: Sizes.width17,
                  ),
                  child: Image.asset(ImageAsset.logoBeautyyGlow),
                ),
                SizedBox(
                  height: Sizes.height74,
                ),
                Wrap(
                  direction: Axis.vertical,
                  spacing: Sizes.height28,
                  children: NavDrawerItem.items
                      .map(
                        (e) => HomeNavigationMenuItem(
                          item: e,
                        ),
                      )
                      .toList(),
                ),
                SizedBox(
                  height: Sizes.height149,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
