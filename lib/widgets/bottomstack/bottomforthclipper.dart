import 'package:flutter/material.dart';

class BottomForthClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, 0.309 * size.height);
    path.quadraticBezierTo(0.2762 * size.width, 0.7841 * size.height,
        0.5787 * size.width, 0.5988 * size.height);
    path.quadraticBezierTo(0.8812 * size.width, 0.4136 * size.height,
        1.0 * size.width, 0.9949 * size.height);
    path.lineTo(size.width, 0);

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => true;
}
