import 'package:flutter/material.dart';

class TopFirstClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, 0.5724 * size.height);
    path.quadraticBezierTo(0.144 * size.width, 0.5637 * size.height,
        0.4947 * size.width, 0.7752 * size.height);
    path.quadraticBezierTo(0.8455 * size.width, 0.9868 * size.height,
        1.0 * size.width, 0.7463 * size.height);
    path.lineTo(size.width, 0);

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => true;
}
