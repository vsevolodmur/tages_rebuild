import 'package:flutter/material.dart';

class TopThirdClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, 0.8119 * size.height);
    path.quadraticBezierTo(0.1664 * size.width, 0.8836 * size.height,
        0.4237 * size.width, 0.6487 * size.height);
    path.quadraticBezierTo(0.681 * size.width, 0.4139 * size.height,
        1.0 * size.width, 0.7713 * size.height);
    path.lineTo(size.width, 0);

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => true;
}
