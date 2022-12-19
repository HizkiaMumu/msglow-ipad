import 'package:flutter/material.dart';

import '../style/color_palettes.dart';

class DashDivider extends StatelessWidget {
  final double height, dashWidth;
  final Color color;

  const DashDivider({
    Key? key,
    this.height = 1,
    this.color = ColorPalettes.divider,
    this.dashWidth = 3,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        final _boxWidth = constraints.constrainWidth();
        final _dashWidth = dashWidth;
        final _dashHeight = height;
        final _dashCount = (_boxWidth / (2 * _dashWidth)).floor();
        return Flex(
          children: List.generate(_dashCount, (_) {
            return SizedBox(
              width: _dashWidth,
              height: _dashHeight,
              child: DecoratedBox(
                decoration: BoxDecoration(color: color),
              ),
            );
          }),
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          direction: Axis.horizontal,
        );
      },
    );
  }
}
