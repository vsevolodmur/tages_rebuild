import 'package:flutter/material.dart';

class TopSecondClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();

    path.lineTo(0, 0.625 * size.height);
    path.quadraticBezierTo(0.3221 * size.width, 0.5498 * size.height,
        0.6738 * size.width, 0.761 * size.height);
    path.quadraticBezierTo(1.0255 * size.width,  0.9722 * size.height,
        1.2004 * size.width, 0.7119 * size.height);
    path.lineTo(size.width, 0);

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => true;
}
