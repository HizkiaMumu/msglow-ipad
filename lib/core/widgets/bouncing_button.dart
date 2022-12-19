import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BouncingButton extends StatelessWidget {
  final Widget child;
  final Function() onTap;
  final EdgeInsetsGeometry? margin;

  const BouncingButton({
    Key? key,
    required this.child,
    required this.onTap,
    this.margin,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _scale = 1.0.obs;
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: GestureDetector(
        onTapDown: (details) {
          _scale.value = 0.9;
        },
        onTapUp: (details) {
          _scale.value = 1;
          onTap();
        },
        onTapCancel: () {
          _scale.value = 1;
        },
        onTap: () {
          onTap();
        },
        child: Obx(
          () => AnimatedScale(
            duration: kThemeAnimationDuration,
            scale: _scale.value,
            child: child,
          ),
        ),
      ),
    );
  }
}
