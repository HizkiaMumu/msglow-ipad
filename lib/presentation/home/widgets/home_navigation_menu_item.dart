import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/style/color_palettes.dart';
import '../../../core/style/sizes.dart';
import '../../../core/utils/theme_util.dart';
import '../../../core/widgets/my_text.dart';
import '../../../domain/entities/home/nav_drawer_item.dart';
import '../cubit/home_cubit.dart';

class HomeNavigationMenuItem extends StatelessWidget {
  final NavDrawerItem item;

  const HomeNavigationMenuItem({
    Key? key,
    required this.item,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int _selectedMenuIndex =
        context.select((HomeCubit value) => value.state.selectedMenuItemIndex);
    Color _bgColor = _selectedMenuIndex == item.id
        ? ColorPalettes.goldText
        : ColorPalettes.bgNavigationMenu;
    Color _labelColor =
        _selectedMenuIndex == item.id ? Colors.white : ColorPalettes.goldText;
    return InkWell(
      onTap: () {
        context.read<HomeCubit>().changeSelectedMenuItemIndex(item);
      },
      child: RotatedBox(
        quarterTurns: 3,
        child: AnimatedContainer(
          padding: EdgeInsets.symmetric(
            horizontal: Sizes.width21,
          ),
          height: Sizes.height82,
          decoration: BoxDecoration(
            color: _bgColor,
            borderRadius: BorderRadius.circular(Sizes.radius13),
          ),
          duration: ThemeUtil.shortAnimationDuration,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RotatedBox(
                quarterTurns: 1,
                child: SvgPicture.asset(
                  item.imageAsset,
                  color: _labelColor,
                  width: item.id == 2 ? Sizes.height21 : Sizes.width24,
                  height: item.id == 2 ? Sizes.width16 : Sizes.width24,
                ),
              ),
              SizedBox(
                width: Sizes.width10,
              ),
              MyText(
                text: item.label,
                textType: TextType.headline6,
                color: _labelColor,
                fontSize: Sizes.sp20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
