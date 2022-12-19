import 'package:flutter/material.dart';

class MyCustomClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double radius = 250;

    Path path = Path()
      ..lineTo(size.width, 0)
      ..lineTo(size.width, size.height - 180)
      ..arcToPoint(
        Offset(
          size.width - radius,
          size.height,
        ),
        radius: Radius.circular(radius),
      )
      ..arcToPoint(
        Offset(
          0,
          size.height - 70,
        ),
        radius: Radius.circular(radius),
      )
      ..lineTo(0, 0)
      ..close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
