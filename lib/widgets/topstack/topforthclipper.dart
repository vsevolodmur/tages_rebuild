import 'package:flutter/material.dart';

class TopForthClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, 0.5945 * size.height);
    path.quadraticBezierTo(0.2762 * size.width, 0.8754 * size.height,
        0.5787 * size.width, 0.7658 * size.height);
    path.quadraticBezierTo(0.8812 * size.width, 0.6563 * size.height,
        1.0 * size.width, 1.0 * size.height);
    path.lineTo(size.width, 0);

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => true;
}
