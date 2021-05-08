import 'package:flutter/material.dart';

class BottomThirdClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, 0.6862 * size.height);
    path.quadraticBezierTo(0.1664 * size.width, 0.8075 * size.height,
        0.4237 * size.width, 0.4101 * size.height);
    path.quadraticBezierTo(0.681 * size.width, 0.0128 * size.height,
        1.0 * size.width, 0.6175 * size.height);
    path.lineTo(size.width, 0);

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => true;
}
