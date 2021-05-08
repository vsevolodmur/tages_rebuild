import 'package:flutter/material.dart';

class BottomSecondClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();

    path.lineTo(0, 0.3656 * size.height);
    path.quadraticBezierTo(0.3221 * size.width, 0.2384 * size.height,
        0.6738 * size.width, 0.5958 * size.height);
    path.quadraticBezierTo(1.0255 * size.width,  0.953 * size.height,
        1.2004 * size.width, 0.5126 * size.height);
    path.lineTo(size.width, 0);

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => true;
}
